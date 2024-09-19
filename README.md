# AWS Secure and powerful architecture for Static Website

Use this solution to create a secure static website for your registered domain name. With this solution, your website:

- Is hosted on [Amazon EC2](https://aws.amazon.com/ec2/)
- Is distributed by [Amazon CloudFront](https://aws.amazon.com/cloudfront/)
- Uses an SSL/TLS certificate from [AWS Certificate Manager (ACM)](https://aws.amazon.com/certificate-manager/)
- Uses [CloudFront Response Header Policies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/adding-response-headers.html) to add security headers to every server response

For more information about each of these components, see the **Solution details** section on this page.

![Architecture](.assets/img/image_2024-09-19_064700960.png)

1. The viewer requests the website at www.example.com.
2. If the requested object is cached, CloudFront returns the object from its cache to the viewer.
3. If the object is not in CloudFront’s cache, CloudFront requests the object from the origin (an S3 bucket).
4. S3 returns the object to CloudFront
5. CloudFront caches the object.
6. The object is returned to the viewer. Subsequent responses for the object are served from the CloudFront cache.

