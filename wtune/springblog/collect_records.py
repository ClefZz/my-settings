import sys

def parse_record(line):
  line = line.strip()
  fields = line.split(" ", 1)
  if len(fields) != 2:
    return None
  return (int(fields[0]), fields[1])

def add_record(records, new_record):
  if new_record is None:
    return
  records.setdefault(new_record[0], []).append(new_record)

def parse_records(inp):
  records = {}
  for line in inp:
    add_record(records, parse_record(line))
  return records

def output_records(records, out):
  sorted_keys = sorted(records.keys())
  for key in sorted_keys:
    records_of_key = records[key]
    print(">%d" % (key), file=out)
    for record in records_of_key:
      print(record[1], file=out)

def main():
  records = parse_records(sys.stdin)
  output_records(records, sys.stdout)

if __name__ == "__main__":
  main()
