#求500万以内的所有亲和数
#如果两个数a和b，a的所有真因数之和等于b,b的所有真因数之和等于a,则称a,b是一对亲和数
#220的真因子是：1、2、4、5、10、11、20、22、44、55、110；
#284的真因子是：1、2、4、71、142。
#284的真因子之和sum[284]=220，且220的真因子之和sum[220]=284，即有sum[220]=sum[sum[284]]=284。
MAX = 5000000
sum = []
5000001.times {|i| sum[i] = 1}
i = 2
while (i + i) <= MAX
	j = i + i
	while (j <= MAX)
		sum[j] += i
		j += i
	end
	i += 1
end
(220..MAX).each do |i|
	if sum[i] > i && sum[i] <= MAX && sum[sum[i]] == i 
		puts i.to_s + "===" + sum[i].to_s
	end
	i += 1
end
