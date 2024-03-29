sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'university/test/integration/FirstJourney',
		'university/test/integration/pages/universityList',
		'university/test/integration/pages/universityObjectPage'
    ],
    function(JourneyRunner, opaJourney, universityList, universityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('university') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheuniversityList: universityList,
					onTheuniversityObjectPage: universityObjectPage
                }
            },
            opaJourney.run
        );
    }
);