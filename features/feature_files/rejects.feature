Feature: Track manuscripts that have been rejected by editorial department

As a member of the editorial department
In order to see how many manuscripts have been rejected for all relevant journals
I need to be able to see a display of all manuscripts that have been rejected by us and if applicable accepted and published by other organisations


Scenario: I am able to see a summary of rejection statistics by publisher and journal (where applicable)

GIVEN I am a member of the editorial department
WHEN I view the rejection tool initial landing page for that publishing brand
THEN I can see a how many manuscripts have been rejected
AND I can see how many of these rejected manuscripts are now published by another publishing organisation
AND I can see the destination journal titles for rejections that went to the top ten publishers by volume
AND I can see aggregated counts for rejections published by organisation no in the top ten by volume
