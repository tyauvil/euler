//
// projecteuler.net
//
// problem 16
//

package main

import (
	"fmt"
	"strconv"
)

func main() {
	n := "10715086071862673209484250490600018105614048117055336074437503883703510511249361224931983788156958581275946729175531468251871452856923140435984577574698574803934567774824230985421074605062371141877954182153046474983581941267398767559165543946077062914571196477686542167660429831652624386837205668069376"
	var answer int64 = 0

	for i := 0; i < len(n); i++ {
		j, _ := strconv.ParseInt(string(n[i]), 10, 0)
		answer += j
	}

	fmt.Printf("%v\n", answer)
}
