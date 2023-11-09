---
route: /alerts
icon: alert
order: 801
---

The Alerts capabilities of Oceanograph are one of the main powers of the platform. Potential issues
can be alerted to the platform by using webhooks.

An separate automated system of your choice can then be used to send notifications to the Oceanograph platform, for
example
when a power outage occurs or if the temperature drops below an acceptable range. The platform will then send you a
notification through email to alert you of an incident.


> ### What are Webhooks?
> A webhook is a mechanism for two computer systems to communicate in real-time. When a specific event occurs in one
> system, it automatically sends a notification to another system through a pre-agreed web address, eliminating the need
> for constant manual checks. It's like having a virtual mailbox where one system can inform the other about updates,
> enabling efficient and timely communication in various applications, from user sign-ups to transaction completions.

The view your alerts, navigate to the [alerts](https://www.oceanograph.net/alerts) in the platform.

## How to trigger Alerts

Alerts are triggered by calling a predefined webhook using a POST, GET or PUT request. Which method
is used does not matter, although most systems will use POST requests.

More information about how to send POST requests can easily be found on the internet.

The main contact point for any alerts is:

```https://www.oceanograph.net/api/alerts/<your key>/trigger```

To manually resolve an alert, you may call:

```https://www.oceanograph.net/api/alerts/<your key>/resolve```

Your key can be found on the alerts page.

## Most Common Use Case

Commonly, any user will want to know whether their temperature or pH is out of range. To do this, you can use several systems,
such as [Home Assistant](https://www.home-assistant.io/), [Node-RED](https://nodered.org/) or [IFTTT](https://ifttt.com/).

These systems have built in alerting that allow you to call the Oceanograph webhook when a certain condition is met.

