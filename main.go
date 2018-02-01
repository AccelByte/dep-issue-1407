
package main

import (

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
)

func main() {
	_, err := session.NewSession(&aws.Config{})
	if err != nil {
		panic(err)
	}
}
