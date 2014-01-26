### ipt_count

iptables rules monitoring tool, chain policy and rules count

### Compile

<pre>
git clone https://github.com/CaledoniaProject/ipt_counting.git && make -C ipt_counting/src
</pre>

### Run

Get output for filter table:
<pre>
sudo ./ipt_counting/src/ipt_check filter
</pre>

Get an output for all chains
<pre>
%> sudo ./ipt_counting/src/ipt_check
filter: policy DROP, 32 rules in total.
</pre>
