## Solution for Grunt 14

This allows the students to learn to read and analyse pcap files. 

### To get the flag

In wireshark menu at the top, click on 'Statistics' and find 'Protocol Hierarchy'.

Under the TCP Protocol, there is a suspicious 'Data' segement. Right click it and select 'Apply as filter', 'Selected'.

The filtered results will show some TCP transmissions between two machines. Right click it and click 'Follow', 'TCP Stream'.

The flag can be seen in the conversation. 

## Flag

```
{GYM_LEADER_DYLAN}
```
