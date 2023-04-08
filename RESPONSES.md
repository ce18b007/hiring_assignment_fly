#### Support Email Response

Subject: Troubleshooting deployment issue

Hello,

I'm sorry to hear that you're experiencing trouble deploying your app. Based on the error message you provided, it seems that the deployment is failing due to an unhealthy allocation. This can be caused by a variety of factors, such as issues with your app's health checks or problems with the underlying infrastructure.

To help resolve the issue, we would need to gather more information. Could you please provide the output of the 'flyctl logs' command and the 'fly.toml' file? Additionally, a screenshot of the result of running "flyctl releases list" can help us determine the source of the error, whether it be due to internal issues or resource limitations.

The unhealthy allocation error suggests that the app started but was unable to pass our health check tests. The unhealthy allocation error means the app could boot but couldn’t connect to our health checks. To address this, please check the following:

-Verify that your app's health checks are configured correctly and returning appropriate results.
-Ensure that the underlying infrastructure, such as servers and networks, are functioning as expected.
-Review the logs for your app to see if any error messages or other relevant information is being generated.
-May I please know in what language or framework your app is written? 
-Was there any major update done to the app? 
-Could you forward us the 'flyctl logs' and 'fly.toml' file then we can find the exact problems, Share the screenshot of the Command "flyctl releases list", and provide details on any changes made to your app before attempting to deploy it? If you have any health checks set up in your app, please provide us with details.

To help diagnose the issue, our community forum has two posts that may be relevant, where other developers share their experiences facing similar issues:

https://community.fly.io/t/v3-failed-failed-due-to-unhealthy-allocations-no-stable-job-version-to-auto-revert-to-and-deploying-as-v4/4274/5 

https://community.fly.io/t/source-of-deployment-failing-due-to-unhealthy-allocations/4247 

If you're still encountering issues after checking these items, please don't hesitate to reach out to us again with additional details or any further questions you may have. We're here to help. 

Best regards, 
Chakri Kanapur
---

#### Support Email Troubleshooting steps

Subject: Troubleshooting Steps for Deployment Failure Error

To help resolve this issue, I recommend the following troubleshooting steps that may help. This is what I would do:

1. Go through the troubleshooting docs of fly.io: https://fly.io/docs/getting-started/troubleshooting/ and make sure all the standard requirements are in place from Port Checking until the end.
2. Try running the logs with fly status --all then fly logs -i <id> of one of the failing vms which should give you a little more information. Check the logs: Review the logs for your app to see if any error messages or other relevant information is being generated. This information may help you identify the root cause of the issue.
3. Take a look at the community forum. There may be someone who had the same issue as you who then ended up solving with. 
4. Check the Monitoring tab in your app dashboard on fly.io. It shows all information about the error that will help with troubleshooting
5. Some of the syntaxes of the tech you are using to build the app would be depreciated. Worth taking a quick peek into it. 
6. Review the health checks: The message suggests that the deployment is failing due to unhealthy allocations. Start by reviewing the health checks for your app to ensure that they are configured correctly and returning appropriate results.
7. Verify infrastructure: Ensure that the underlying infrastructure, such as servers and networks, are functioning as expected. This could include checking for any issues with connectivity or resource availability. Give the solution that app uses the automatically increase and decrease the Virtual machine count "flyctl autoscale set min=3 max=20".
8. Test previous versions: Try deploying a previous version of your app to see if the issue is specific to the changes you made. This can help you determine if the issue is related to the changes you made or if there are other underlying problems. 
9. Verify basic solutions and use the 'flyctl status' and 'flyctl scale' commands to determine the Virtual Machine count.Suggest implementing automatic scaling of the Virtual Machines by using the command "flyctl autoscale set min=3 max=20".Gather further information on the problem through the 'https://fly.io/docs/reference/scaling/' link.
10. Implement the solution and check the status using 'flyctl status' and 'flyctl scale' commands.Monitor the app using 'flyctl logs' and 'flyctl releases list' to ensure that it's working as expected.
11. If you're still encountering issues after following these steps, consider reaching out to us for additional assistance. Provide as much detail as possible about the issue, including the error message and any relevant information from the logs.

If you're still encountering issues after following these steps,let me know and I can check internally if we have any kind of outages at the moment. Or perhaps check with the internal team to troubleshoot it. Please don't hesitate to reach out to us for additional assistance. Our team is here to help, and we'd be happy to assist you in resolving this issue as quickly as possible.

Thank you for bringing this to our attention, and I look forward to hearing from you soon.

Best regards, 
Chakri Kanapur
---
  
#### Community Forum Response

Hi there

Based on your description, it appears that there might be an issue with your app deployment in the two regions that you've deployed to. It's great to hear that your app is working fine locally

I request you to ensure that your app is running with the correct configuration and that all necessary environment variables are set. Check waiting for Some time to up and running the instance.("503 Service Unavailable error means that the page or resource is unavailable").
Please run "fly logs" to see if it throws any issues or errors?

later , try running "fly status --all" to see if the app did really deploy. 
Please Check the logs by getting in the 'flyctl logs' of your app deployment in the two regions to see if there are any error messages. This can give you more insight into what might be causing the 503 status code errors
Also check that your app is not exceeding the resource limits set by Fly, such as the CPU and memory limits.
Please try a test deployment in a different region to see if the issue is isolated to just the two regions you've deployed to

Please take a look on this posts: https://community.fly.io/t/503-error-when-resuming-an-app/1173
https://fly.io/docs/getting-started/troubleshooting/ 
which may guide you through your the problem your are facing.

---

#### Rails App URL

Once you've deployed your Rails app, put the link here: [restless-glitter-972.fly.dev](https://restless-glitter-972.fly.dev/)
