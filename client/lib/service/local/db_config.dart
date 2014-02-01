part of compdb.service;

class DbConfig {

  String get db => "compdb_aaa";

  Map get storages => {
      "companies": [
          {
              "name": "Apple Inc.",
          },
          {
              "name": "Thinking Machines",
          },
          {
              "name": "RCA",
          },
          {
              "name": "Netronics",
          },
          {
              "name": "Tandy Corporation",
          },
          {
              "name": "Commodore International",
          },
          {
              "name": "MOS Technology",
          },
          {
              "name": "Micro Instrumentation and Telemetry Systems",
          },
          {
              "name": "IMS Associates, Inc.",
          },
          {
              "name": "Digital Equipment Corporation",
          },
          {
              "name": "Lincoln Laboratory",
          },
          {
              "name": "Moore School of Electrical Engineering",
          },
          {
              "name": "IBM",
          },
          {
              "name": "Amiga Corporation",
          },
          {
              "name": "Canon",
          },
          {
              "name": "Nokia",
          },
          {
              "name": "Sony",
          },
          {
              "name": "OQO",
          },
          {
              "name": "NeXT",
          },
          {
              "name": "Atari",
          },
          {
              "name": "Acorn computer",
          },
          {
              "name": "Timex Sinclair",
          },
          {
              "name": "Nintendo",
          },
          {
              "name": "Sinclair Research Ltd",
          },
          {
              "name": "Xerox",
          },
          {
              "name": "Hewlett-Packard",
          },
          {
              "name": "Zemmix",
          },
          {
              "name": "ACVS",
          },
          {
              "name": "Sanyo",
          },
          {
              "name": "Cray",
          },
          {
              "name": "Evans & Sutherland",
          },
          {
              "name": "E.S.R. Inc.",
          },
          {
              "name": "OMRON",
          },
          {
              "name": "BBN Technologies",
          },
          {
              "name": "Lenovo Group",
          },
          {
              "name": "ASUS",
          },
          {
              "name": "Amstrad",
          },
          {
              "name": "Sun Microsystems",
          },
          {
              "name": "Texas Instruments",
          },
          {
              "name": "HTC Corporation",
          },
          {
              "name": "Research In Motion",
          },
          {
              "name": "Samsung Electronics",
          },
      ],
      "computers": [
          {
              "id": 1,
              "name": "MacBook Pro 15.4 inch",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "CM-2a",
              "introduced": null,
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "CM-200",
              "introduced": null,
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "CM-5e",
              "introduced": null,
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "CM-5",
              "introduced": "1991-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "MacBook Pro",
              "introduced": "2006-01-10 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple IIe",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple IIc",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple IIGS",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple IIc Plus",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple II Plus",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Apple III",
              "introduced": "1980-05-01 00:00:00.000Z",
              "discontinued": "1984-04-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Apple Lisa",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "CM-2",
              "introduced": null,
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "Connection Machine",
              "introduced": "1987-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 2
          },
          {
              "name": "Apple II",
              "introduced": "1977-04-01 00:00:00.000Z",
              "discontinued": "1993-10-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Apple III Plus",
              "introduced": "1983-12-01 00:00:00.000Z",
              "discontinued": "1984-04-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "COSMAC ELF",
              "introduced": null,
              "discontinued": null,
              "companyId": 3
          },
          {
              "name": "COSMAC VIP",
              "introduced": "1977-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 3
          },
          {
              "name": "ELF II",
              "introduced": "1977-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 4
          },
          {
              "name": "Macintosh",
              "introduced": "1984-01-24 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh II",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Plus",
              "introduced": "1986-01-16 00:00:00.000Z",
              "discontinued": "1990-10-15 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Macintosh IIfx",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iMac",
              "introduced": "1998-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Mac Mini",
              "introduced": "2005-01-22 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Mac Pro",
              "introduced": "2006-08-07 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Power Macintosh",
              "introduced": "1994-03-01 00:00:00.000Z",
              "discontinued": "2006-08-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "PowerBook",
              "introduced": "1991-01-01 00:00:00.000Z",
              "discontinued": "2006-01-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Xserve",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Powerbook 100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Powerbook 140",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Powerbook 170",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook Duo",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 190",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra",
              "introduced": "1991-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh Quadra 900",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 700",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh LC",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh LC II",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh LC III",
              "introduced": "1993-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh LC III+",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 605",
              "introduced": "1993-10-21 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh LC 500 series",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TRS-80 Color Computer",
              "introduced": "1980-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 5
          },
          {
              "name": "Acorn System 2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Dragon 32/64",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MEK6800D2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Newbear 77/68",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Commodore PET",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore 64",
              "introduced": "1982-08-01 00:00:00.000Z",
              "discontinued": "1994-01-01 00:00:00.000Z",
              "companyId": 6
          },
          {
              "name": "Commodore 64C",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Commodore SX-64",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore 128",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Apple I",
              "introduced": "1976-04-01 00:00:00.000Z",
              "discontinued": "1977-10-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "KIM-1",
              "introduced": "1975-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 7
          },
          {
              "name": "Altair 8800",
              "introduced": "1974-12-19 00:00:00.000Z",
              "discontinued": null,
              "companyId": 8
          },
          {
              "name": "IMSAI 8080",
              "introduced": "1975-08-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 9
          },
          {
              "name": "IMSAI Series Two",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "VAX",
              "introduced": "1977-10-25 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "VAX 11/780",
              "introduced": "1977-10-25 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "VAX 11/750",
              "introduced": "1980-10-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "TX-2",
              "introduced": "1958-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 11
          },
          {
              "name": "TX-0",
              "introduced": "1956-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 11
          },
          {
              "name": "Whirlwind",
              "introduced": "1951-04-20 00:00:00.000Z",
              "discontinued": null,
              "companyId": 11
          },
          {
              "name": "ENIAC",
              "introduced": "1946-02-15 00:00:00.000Z",
              "discontinued": "1955-10-02 00:00:00.000Z",
              "companyId": 12
          },
          {
              "name": "IBM PC",
              "introduced": "1981-08-12 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "Macintosh Classic",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Classic II",
              "introduced": "1991-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Amiga",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 14
          },
          {
              "name": "Amiga 1000",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 500",
              "introduced": "1987-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 500+",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amiga 2000",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": "1990-01-01 00:00:00.000Z",
              "companyId": 6
          },
          {
              "name": "Amiga 3000",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 600",
              "introduced": "1992-03-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Macintosh 128K",
              "introduced": "1984-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Macintosh 512K",
              "introduced": "1984-09-10 00:00:00.000Z",
              "discontinued": "1986-04-14 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Macintosh SE",
              "introduced": "1987-03-02 00:00:00.000Z",
              "discontinued": "1989-08-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Macintosh SE/30",
              "introduced": "1989-01-19 00:00:00.000Z",
              "discontinued": "1991-10-21 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Canon Cat",
              "introduced": "1987-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 15
          },
          {
              "name": "Nokia 770",
              "introduced": null,
              "discontinued": null,
              "companyId": 16
          },
          {
              "name": "Nokia N800",
              "introduced": "2007-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 16
          },
          {
              "name": "Mylo",
              "introduced": "2006-09-21 00:00:00.000Z",
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "OQO 02",
              "introduced": "2007-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 18
          },
          {
              "name": "OQO 01+",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Pinwheel calculator",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iBook",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "MacBook",
              "introduced": "2006-05-16 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "NeXTstation",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": "1993-01-01 00:00:00.000Z",
              "companyId": 19
          },
          {
              "name": "NeXTcube",
              "introduced": "1988-01-01 00:00:00.000Z",
              "discontinued": "1993-01-01 00:00:00.000Z",
              "companyId": 19
          },
          {
              "name": "NeXTstation Color Turbo",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "NeXTstation Color",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "NeXTstation Turbo",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "NeXTcube Turbo",
              "introduced": null,
              "discontinued": null,
              "companyId": 19
          },
          {
              "name": "NeXTcube 040",
              "introduced": null,
              "discontinued": null,
              "companyId": 19
          },
          {
              "name": "NeXTcube 030",
              "introduced": null,
              "discontinued": null,
              "companyId": 19
          },
          {
              "name": "Tinkertoy Tic-Tac-Toe Computer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Z3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Z4",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Z1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Z2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Wang 2200",
              "introduced": "1973-05-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Wang VS",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Wang OIS",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BBC Micro",
              "introduced": null,
              "discontinued": null,
              "companyId": 22
          },
          {
              "name": "IBM 650",
              "introduced": "1953-01-01 00:00:00.000Z",
              "discontinued": "1962-01-01 00:00:00.000Z",
              "companyId": 13
          },
          {
              "name": "Cray-1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray-3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray-2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray-4",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray X1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray XD1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray T3D",
              "introduced": "1993-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray T3E",
              "introduced": "1995-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray C90",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray T90",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray SV1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray J90",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray XT3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Cray CS6400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari ST",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": "1993-01-01 00:00:00.000Z",
              "companyId": 20
          },
          {
              "name": "Amiga 2500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amiga 2500",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 4000",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 3000UX",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 3000T",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 4000T",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 1200",
              "introduced": "1992-10-01 00:00:00.000Z",
              "discontinued": "1996-01-01 00:00:00.000Z",
              "companyId": 6
          },
          {
              "name": "Atari 1040 STf",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 ST",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 STfm",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 1040 STe",
              "introduced": "1989-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari MEGA STe",
              "introduced": "1991-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 ST+",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 STm",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 130 ST",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 260 ST",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari MEGA ST",
              "introduced": "1987-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 STf",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 1040 STfm",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 2080 ST",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 260 ST+",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 4160 STe",
              "introduced": "1988-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TRS-80 Color Computer 2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TRS-80 Color Computer 3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TRS-80 Model 1",
              "introduced": "1977-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 5
          },
          {
              "name": "Timex Sinclair 2068",
              "introduced": "1983-11-01 00:00:00.000Z",
              "discontinued": "1984-04-01 00:00:00.000Z",
              "companyId": 23
          },
          {
              "name": "ZX Spectrum",
              "introduced": "1982-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "Xerox Star",
              "introduced": "1981-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 26
          },
          {
              "name": "Xerox Alto",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Acorn Archimedes",
              "introduced": null,
              "discontinued": null,
              "companyId": 22
          },
          {
              "name": "Nintendo Entertainment System",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Super Nintendo Entertainment System",
              "introduced": "1991-08-01 00:00:00.000Z",
              "discontinued": "1999-01-01 00:00:00.000Z",
              "companyId": 24
          },
          {
              "name": "Super Famicom",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Nintendo GameCube",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy line",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PlayStation",
              "introduced": "1994-12-03 00:00:00.000Z",
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "PlayStation 2",
              "introduced": "2000-03-24 00:00:00.000Z",
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "Game & Watch",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "EDSAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM System/4 Pi",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM AP-101",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM TC-1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM AP-101B",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM AP-101S",
              "introduced": null,
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "ProLiant",
              "introduced": null,
              "discontinued": null,
              "companyId": 27
          },
          {
              "name": "Http://nepomuk.semanticdesktop.org/xwiki/",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sinclair QL",
              "introduced": "1984-01-01 00:00:00.000Z",
              "discontinued": "1986-01-01 00:00:00.000Z",
              "companyId": 25
          },
          {
              "name": "Sinclair ZX81",
              "introduced": "1981-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "Sinclair ZX80",
              "introduced": null,
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "Atari 65XE",
              "introduced": null,
              "discontinued": null,
              "companyId": 20
          },
          {
              "name": "Deep Blue",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 650",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 610",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 800",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 950",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 160",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 145B",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 170",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 145",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook G3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 140",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIcx",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Powerbook 180",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook G4",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh XL",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 2400c",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 1400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 630",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 660AV",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Quadra 840AV",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 5300",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 3400c",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Color Classic",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh 512Ke",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIsi",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIx",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerBook 500 series",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh G3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIci",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iMac G5",
              "introduced": "2004-08-31 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Power Mac G4",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 7100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 9600",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 7200",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 7300",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 8600",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 6200",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 8100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Compact Macintosh",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 4400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 9500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Portable",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "EMac",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 7600",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Mac G5",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 7500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 6100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 8500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIvi",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh IIvx",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IMac G3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IMac G4",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Mac G4 Cube",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Intel iMac",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Deep Thought",
              "introduced": null,
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "Wii",
              "introduced": "2006-11-19 00:00:00.000Z",
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "IBM System x",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM System i",
              "introduced": "2006-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM System z",
              "introduced": "2006-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM System p",
              "introduced": "2000-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "LC 575",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh TV",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh Performa",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh II series",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 6400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 6500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Apple PenLite",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Wallstreet",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Twentieth Anniversary Macintosh",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 5500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iBook G3",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Power Macintosh 5200 LC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh 5400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CM-1",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MSX",
              "introduced": "1983-01-01 00:00:00.000Z",
              "discontinued": "1995-01-01 00:00:00.000Z",
              "companyId": 28
          },
          {
              "name": "PlayStation 3",
              "introduced": null,
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "MSX2",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 29
          },
          {
              "name": "MSX2+",
              "introduced": "1988-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 30
          },
          {
              "name": "MSX turbo R",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Panasonic FS A1GT",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Panasonic FS A1ST",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PDP-11",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-1",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-10",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-8",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-6",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DECSYSTEM-20",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-7",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-5",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-12",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "LINC",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-14",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-15",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "PDP-16",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "Cray X2",
              "introduced": "2007-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 31
          },
          {
              "name": "Cray X-MP",
              "introduced": "1982-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 31
          },
          {
              "name": "Evans & Sutherland ES-1",
              "introduced": null,
              "discontinued": null,
              "companyId": 32
          },
          {
              "name": "Commodore VIC-20",
              "introduced": "1980-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "PowerBook 150",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MacBook Air",
              "introduced": "2008-01-15 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Digi-Comp I",
              "introduced": "1963-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 33
          },
          {
              "name": "Digi-Comp",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Digi-Comp II",
              "introduced": null,
              "discontinued": null,
              "companyId": 33
          },
          {
              "name": "Manchester Mark I",
              "introduced": "1949-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Small-Scale Experimental Machine",
              "introduced": "1948-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Nintendo 64",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy Advance",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Nintendo DS Lite",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Nintendo DS",
              "introduced": "2004-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy Color",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy Advance SP",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Virtual Boy",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Game Boy Micro",
              "introduced": null,
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "Roadrunner",
              "introduced": null,
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "HP 9000",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "OMRON Luna-88K2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "OMRON Luna-88K",
              "introduced": null,
              "discontinued": null,
              "companyId": 34
          },
          {
              "name": "Motorola series 900",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Motorola M8120",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Triton Dolphin System 100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BBN TC2000",
              "introduced": "1989-08-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 35
          },
          {
              "name": "WRT54G",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad",
              "introduced": "1992-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 36
          },
          {
              "name": "Apple Newton",
              "introduced": "1993-01-01 00:00:00.000Z",
              "discontinued": "1998-01-01 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "Atanasoff-Berry Computer",
              "introduced": "1937-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atlas Computer",
              "introduced": "1962-01-01 00:00:00.000Z",
              "discontinued": "1974-01-01 00:00:00.000Z",
              "companyId": null
          },
          {
              "name": "ASUS Eee PC 901",
              "introduced": null,
              "discontinued": null,
              "companyId": 37
          },
          {
              "name": "ASUS Eee PC 701",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM 7030",
              "introduced": "1961-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "System/38",
              "introduced": "1979-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "System/36",
              "introduced": "1983-01-01 00:00:00.000Z",
              "discontinued": "2000-01-01 00:00:00.000Z",
              "companyId": 13
          },
          {
              "name": "IBM 7090",
              "introduced": "1959-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM RT",
              "introduced": null,
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "System/360",
              "introduced": "1964-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM 801",
              "introduced": "1980-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM 1401",
              "introduced": "1959-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "ASCI White",
              "introduced": "2001-01-01 00:00:00.000Z",
              "discontinued": "2006-01-01 00:00:00.000Z",
              "companyId": 13
          },
          {
              "name": "Blue Gene",
              "introduced": null,
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "ASCI Blue Pacific",
              "introduced": "1998-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "iPhone",
              "introduced": "2007-06-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Nokia N810",
              "introduced": "2007-10-17 00:00:00.000Z",
              "discontinued": null,
              "companyId": 16
          },
          {
              "name": "EDSAC 2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Titan",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Pilot ACE",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HP Mini 1000",
              "introduced": "2008-10-29 00:00:00.000Z",
              "discontinued": null,
              "companyId": 27
          },
          {
              "name": "HP 2133 Mini-Note PC",
              "introduced": "2008-04-15 00:00:00.000Z",
              "discontinued": null,
              "companyId": 27
          },
          {
              "name": "Kogan Agora Pro",
              "introduced": "2008-12-04 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "D-Series Machines",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ZX Spectrum 48K",
              "introduced": "1982-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "ZX Spectrum 16K",
              "introduced": "1982-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "ZX Spectrum 128",
              "introduced": "1985-09-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "ZX Spectrum +3",
              "introduced": null,
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "ZX Spectrum +2",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "ZX Spectrum +2A",
              "introduced": "1987-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "ZX Spectrum +",
              "introduced": "1984-06-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "Acer Extensa",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Acer Extensa 5220",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Dell Latitude",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Toshiba Satellite",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Timex Sinclair 2048",
              "introduced": null,
              "discontinued": null,
              "companyId": 23
          },
          {
              "name": "Sprinter",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Timex Computer 2048",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Pentagon",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Belle",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Loki",
              "introduced": null,
              "discontinued": null,
              "companyId": 25
          },
          {
              "name": "Hobbit",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "NeXT Computer",
              "introduced": null,
              "discontinued": null,
              "companyId": 19
          },
          {
              "name": "TRS-80",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TRS-80 Model 2",
              "introduced": "1980-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 5
          },
          {
              "name": "TRS-80 Model 3",
              "introduced": null,
              "discontinued": null,
              "companyId": 5
          },
          {
              "name": "STacy",
              "introduced": "1989-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ST BOOK",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Atari 520 STE",
              "introduced": "1989-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amiga 2000 Model A",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amiga 2000 Model B",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amiga 2000 Model C",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM 3270",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CALDIC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Modbook",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Compaq SystemPro",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ARRA",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM System Cluster 1350",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Finite element machine",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ES7000",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HP MediaSmart Server",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HP Superdome",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM Power Systems",
              "introduced": "2008-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "Oslo Analyzer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Microsoft Softcard",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "WITCH",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Analytical engine",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "EDVAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BINAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Earth Simulator",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BARK",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Harvard Mark I",
              "introduced": "1944-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "ILLIAC IV",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ILLIAC II",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ILLIAC III",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Water integrator",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CSIRAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "System X",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Harvest",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ChipTest",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HiTech",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Bomba",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ACE",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ASCI Red",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ASCI Thors Hammer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ASCI Purple",
              "introduced": "2005-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "ASCI Blue Mountain",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Columbia",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HP Integrity",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "APEXC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Datasaab D2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BRLESC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DYSEAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "SSEC",
              "introduced": "1948-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "Hydra",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "FUJIC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "RAYDAC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Harvard Mark III",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DATAR",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ReserVec",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DASK",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "UTEC",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DRTE Computer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PowerEdge",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Apple Network Server",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Goodyear MPP",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Macintosh 128K technical details",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Power Macintosh G3",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CER-10",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CER-20",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM BladeCenter",
              "introduced": "2002-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "Wisconsin Integrally Synchronized Computer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Amstrad CPC",
              "introduced": null,
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "Amstrad CPC 6128",
              "introduced": null,
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "Amstrad CPC 664",
              "introduced": null,
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "Amstrad CPC 464",
              "introduced": null,
              "discontinued": null,
              "companyId": 38
          },
          {
              "name": "Intergraph",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Enterprise",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MTX500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Acorn Electron",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P",
              "introduced": "2009-02-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "VAIO",
              "introduced": null,
              "discontinued": null,
              "companyId": 17
          },
          {
              "name": "Sony Vaio P VGN-P588E/Q",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P530H/G",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P530H/W",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P530H/Q",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P530H/R",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P588E/R",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sony Vaio P VGN-P598E/Q",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Timex Sinclair 1000",
              "introduced": "1982-07-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 23
          },
          {
              "name": "Komputer 2086",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Galaksija",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Vector-06C",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Elektronika BK",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sun386i",
              "introduced": null,
              "discontinued": null,
              "companyId": 39
          },
          {
              "name": "Xerox Daybreak",
              "introduced": "1985-01-01 00:00:00.000Z",
              "discontinued": "1989-01-01 00:00:00.000Z",
              "companyId": null
          },
          {
              "name": "Xerox NoteTaker",
              "introduced": null,
              "discontinued": null,
              "companyId": 26
          },
          {
              "name": "D4a",
              "introduced": "1965-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "LGP-30",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "LGP-21",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ASUS Eee PC 900",
              "introduced": "2008-05-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 37
          },
          {
              "name": "Atari TT030",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Bi Am ZX-Spectrum 48/64",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Bi Am ZX-Spectrum 128",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PlayStation Portable",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MSI Wind Netbook",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sharp Mebius NJ70A",
              "introduced": "2009-04-21 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HTC Snap",
              "introduced": null,
              "discontinued": null,
              "companyId": 41
          },
          {
              "name": "Commodore Educator 64",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Amiga 1500",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore 65",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore 16",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore CBM-II",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore Plus/4",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore LCD",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Commodore MAX Machine",
              "introduced": null,
              "discontinued": null,
              "companyId": 6
          },
          {
              "name": "Aster CT-80",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Test",
              "introduced": "2009-01-01 00:00:00.000Z",
              "discontinued": "2009-01-01 00:00:00.000Z",
              "companyId": null
          },
          {
              "name": "MSI GX723",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Eee PC 1000HV",
              "introduced": "2009-05-22 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "VTech Laser 200",
              "introduced": "1983-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CrunchPad",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Neo Geo",
              "introduced": "1990-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sega Mega Drive",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sega Master System",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "TurboGrafx-16",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Sun-3",
              "introduced": null,
              "discontinued": null,
              "companyId": 39
          },
          {
              "name": "Pleiades",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM Sequoia",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Inves Spectrum 48k plus",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iPhone 3G",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iPhone 3GS",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Beagle Board",
              "introduced": null,
              "discontinued": null,
              "companyId": 40
          },
          {
              "name": "HP nPar",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MacBook Family",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Reservisor",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BladeSystem",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad t60p",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x200",
              "introduced": null,
              "discontinued": null,
              "companyId": 36
          },
          {
              "name": "lenovo thinkpad t60",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad w700",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad t41",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad z61p",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x61s",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad t43",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad r400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x60s",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x301",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad t42",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad r61",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad w500",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad sl400",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x40",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "lenovo thinkpad x200 tablet",
              "introduced": null,
              "discontinued": null,
              "companyId": 36
          },
          {
              "name": "lenovo thinkpad t400s",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Nokia N900",
              "introduced": "2009-10-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 16
          },
          {
              "name": "Internet Tablet",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Meiko Computing Surface",
              "introduced": "1986-01-01 00:00:00.000Z",
              "discontinued": "1993-01-01 00:00:00.000Z",
              "companyId": null
          },
          {
              "name": "CS-2",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IBM 701",
              "introduced": "1952-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM 5100",
              "introduced": "1975-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "AN/FSQ-7",
              "introduced": "1958-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "AN/FSQ-32",
              "introduced": "1960-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "IBM CPC",
              "introduced": "1949-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "System/34",
              "introduced": "1978-01-01 00:00:00.000Z",
              "discontinued": "1983-01-01 00:00:00.000Z",
              "companyId": 13
          },
          {
              "name": "System/32",
              "introduced": "1975-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "System/3",
              "introduced": "1969-01-01 00:00:00.000Z",
              "discontinued": "1985-01-01 00:00:00.000Z",
              "companyId": 13
          },
          {
              "name": "IBM 305",
              "introduced": "1956-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 13
          },
          {
              "name": "English Electric DEUCE",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CER-203",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "CER-22",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Kentucky Linux Athlon Testbed",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "QNAP TS-101",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iPad",
              "introduced": "2010-01-01 00:00:00.000Z",
              "discontinued": "2011-03-02 00:00:00.000Z",
              "companyId": 1
          },
          {
              "name": "iPhone 2G",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Inslaw",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "WePad",
              "introduced": "2010-07-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MacBook Parts",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "MacBook 13-inch Core 2 Duo 2.13GHz (MC240LL/A) DDR2 Model",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "MacBook 13-inch Core 2 Duo 2.13GHz (MC240T/A) DDR2 Model",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MacBook 13-inch Core 2 Duo 2.13GHz (MC240X/A) DDR2 Model",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MacBook 13-inch Core 2 Duo 2.26GHz (Unibody MC207LL/A) DDR3 Model",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MC240LL/A",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "D.K.COMMUNICATION",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iPhone 4",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Nintendo 3DS",
              "introduced": "2010-03-23 00:00:00.000Z",
              "discontinued": null,
              "companyId": 24
          },
          {
              "name": "ASUS Eee PC 1005PE",
              "introduced": "2010-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 37
          },
          {
              "name": "National Law Enforcement System",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "BlackBerry PlayBook",
              "introduced": null,
              "discontinued": null,
              "companyId": 42
          },
          {
              "name": "Barnes & Noble nook",
              "introduced": "2009-10-20 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "SAM Coupé",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "HTC Dream",
              "introduced": "2008-10-22 00:00:00.000Z",
              "discontinued": null,
              "companyId": 41
          },
          {
              "name": "Samsung Galaxy Tab",
              "introduced": "2010-09-02 00:00:00.000Z",
              "discontinued": null,
              "companyId": 43
          },
          {
              "name": "BlackBerry PlayBook",
              "introduced": "2010-09-27 00:00:00.000Z",
              "discontinued": null,
              "companyId": 42
          },
          {
              "name": "Tianhe-I",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Kno",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad 701 C",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad 340 CSE",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad 755 CX",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad 755 CE",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ThinkPad 370 C",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Coleco Adam",
              "introduced": "1983-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Nebulae",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Alex eReader",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Acer Iconia",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Archos 101",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Fujitsu Lifebook T900",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Motorola Xoom",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "ViewSonic G Tablet",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DEC Professional",
              "introduced": "1982-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC Multia",
              "introduced": "1994-11-07 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC Firefly",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC 3000 AXP",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC 2000 AXP",
              "introduced": "1993-05-25 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC 4000 AXP",
              "introduced": "1992-11-10 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC 7000/10000 AXP",
              "introduced": "1992-11-10 00:00:00.000Z",
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DEC Professional 350",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DEC Rainbow 100",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DEC Professional 325",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DECmate II",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DECmate",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "DECsystem",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "NetApp Filer",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "DEC GT40",
              "introduced": null,
              "discontinued": null,
              "companyId": 10
          },
          {
              "name": "ecoATM",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "MindWave BrainCubed Education Bundle",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "PalmPilot",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Upcoming iPhone 5",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "Dell Inspiron 560 Desktop Computer ",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "IPad 2",
              "introduced": null,
              "discontinued": null,
              "companyId": 1
          },
          {
              "name": "HP TouchPad",
              "introduced": "2011-02-09 00:00:00.000Z",
              "discontinued": null,
              "companyId": 27
          },
          {
              "name": "HP Veer",
              "introduced": "2011-02-09 00:00:00.000Z",
              "discontinued": null,
              "companyId": 27
          },
          {
              "name": "Lenovo Thinkpad Edge 11",
              "introduced": null,
              "discontinued": null,
              "companyId": 36
          },
          {
              "name": "Dell Vostro",
              "introduced": null,
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "Gateway LT3103U",
              "introduced": "2008-01-01 00:00:00.000Z",
              "discontinued": null,
              "companyId": null
          },
          {
              "name": "iPhone 4S",
              "introduced": "2011-10-14 00:00:00.000Z",
              "discontinued": null,
              "companyId": 1
          }
      ]
  };

}