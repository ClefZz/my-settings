import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DFAFilter {

  private static class State {
    private final char currentChar;
    private final State prev;

    private boolean canBeTerminator = false;
    private final Map<Character, State> transitions = new HashMap<>();

    private State(char currentChar, State prev) {
      this.currentChar = currentChar;
      this.prev = prev;
    }

    private static State getInitialState() {
      return new State('\0', null);
    }

    private State addTransition(char c) {
      State nextState = transitions.get(c);
      if (nextState == null) {
        nextState = new State(c, this);
        transitions.put(c, nextState);
      }
      return nextState;
    }

    private State transition(char c) {
      return transitions.get(c);
    }

    private void setCanBeTerminator(boolean flag) {
      this.canBeTerminator = true;
    }
  }

  private State initialState;

  private DFAFilter(State initialState) {
    this.initialState = initialState;
  }

  public static DFAFilter buildFilter(Set<String> blockedWords) {
    final State initialState = State.getInitialState();

    for (String word : blockedWords) {
      State curState = initialState;

      for (char c : word.toCharArray()) curState = curState.addTransition(c);

      curState.setCanBeTerminator(true);
    }

    return new DFAFilter(initialState);
  }

  /**
   * Build a DFAFilter.
   *
   * @param words blocked words
   */
  private static void getBlockedWords(State curState, StringBuilder sb, Set<String> words) {
    sb.append(curState.currentChar);

    if (curState.canBeTerminator) words.add(sb.toString());
    final int curLength = sb.length();

    for (State nextState : curState.transitions.values()) {
      getBlockedWords(nextState, sb, words);
      sb.delete(curLength, sb.length());
    }
  }

  public Set<String> getBlockedWords() {
    final Set<String> words = new HashSet<>();
    for (State nextState : initialState.transitions.values())
      getBlockedWords(nextState, new StringBuilder(), words);
    return words;
  }

  private Match tryMatch(String s, boolean longestMatch, int start) {
    State curState = initialState;

    for (int i = start, bound = s.length(); i < bound; ++i) {
      if (curState.canBeTerminator && !longestMatch) return new Match(s, start, i);

      final State nextState = curState.transition(s.charAt(i));
      if (nextState == null)
        if (curState.canBeTerminator) return new Match(s, start, i);
        else return null;

      curState = nextState;
    }
    return (curState.canBeTerminator) ? new Match(s, start, s.length()) : null;
  }

  public Matches getMatches(String s, boolean longestMatch) {
    final StringBuilder sb = new StringBuilder();
    final Matches matches = new Matches(s);
    for (int i = 0, bound = s.length(); i < bound; ++i) {
      final Match m = tryMatch(s, longestMatch, i);
      if (m != null) matches.add(m);
    }
    return matches;
  }

  public boolean containsBlockedWords(String s) {
    return getMatches(s, true).matches.size() != 0;
  }

  /**
   * Replace blocked words with '*' in given string.
   *
   * <p>`longestMatch` works as the following example shows:
   * <p> filter: {ab, a}
   * <p> filter.blockWords("abc", true) => "**c"
   * <p> filter.blockWords("abc", false) => "*bc"
   *
   * @param s string to be replaced
   * @param longestMatch whether match the words as long as possible
   * */
  public String blockWords(String s, boolean longestMatch) {
    return blockWords(s, longestMatch, '*');
  }

  public String blockWords(String s, boolean longestMatch, char replacement) {
    final Matches matches = getMatches(s, longestMatch);
    for (Match m : matches) m.replaceWith(replacement);
    return matches.sb.toString();
  }

  @Override
  public String toString() {
    return getBlockedWords().toString();
  }

  public static class Match {
    private final String str;
    private final int start;
    private final int end;

    private StringBuilder sb;

    public Match(String str, int start, int end) {
      this.str = str;
      this.start = start;
      this.end = end;
    }

    public void replaceWith(char s) {
      if (sb == null) sb = new StringBuilder(str);
      for (int i = start, bound = end; i < bound; ++i) sb.setCharAt(i, s);
    }

    public String getMatch() {
      return str.substring(start, end);
    }
  }

  public static class Matches implements Iterable<Match> {
    private final String str;
    private final StringBuilder sb;
    private final List<Match> matches = new ArrayList<>();

    private Matches(String str) {
      this.str = str;
      this.sb = new StringBuilder(str);
    }

    @Override
    public Iterator<Match> iterator() {
      return matches.iterator();
    }

    public String replace() {
      return replaceWith('*');
    }

    public String replaceWith(char replacement) {
      for (Match m : matches) m.replaceWith(replacement);
      return sb.toString();
    }

    public void add(Match m) {
      m.sb = this.sb;
      matches.add(m);
    }
  }

 // public static void main(String... args) {
   // final String s1 = "你好";
   // final String s2 = "你好, 世界";
   // final String s3 = "hello";
   // final String s4 = "lo";

   // final Set<String> words = new HashSet<>();
   // words.add(s1);
   // words.add(s2);
   // words.add(s3);
   // words.add(s4);

   // final DFAFilter filter = DFAFilter.buildFilter(words);
   // System.out.println(filter.toString());

   // final String s = "你好, 世界, hlo";

   // System.out.println(filter.getMatches(s, true).matches.size());
   // System.out.println(filter.getMatches(s, false).matches.size());
   // System.out.println(filter.blockWords(s, false));
   // System.out.println(filter.blockWords(s, true));
 // }
}
