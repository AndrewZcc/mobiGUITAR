.class public Lit/unina/androidripper/guitree/GuiTreeEngine;
.super Lit/unina/androidripper/Engine;
.source "GuiTreeEngine.java"


# instance fields
.field private guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

.field private theAutomation:Lit/unina/androidripper/automation/Automation;

.field private theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

.field protected thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

.field private theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

.field protected theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

.field private user:Lit/unina/androidripper/model/UserAdapter;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 33
    invoke-direct {p0}, Lit/unina/androidripper/Engine;-><init>()V

    .line 35
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getNewScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v7

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setScheduler(Lit/unina/androidripper/planning/TraceDispatcher;)V

    .line 37
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getNewAutomation()Lit/unina/androidripper/automation/Automation;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    .line 38
    new-instance v7, Lit/unina/androidripper/automation/BasicRestarter;

    invoke-direct {v7}, Lit/unina/androidripper/automation/BasicRestarter;-><init>()V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    .line 39
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v8, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    invoke-virtual {v7, v8}, Lit/unina/androidripper/automation/Automation;->setRestarter(Lit/unina/androidripper/model/Restarter;)V

    .line 40
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setRobot(Lit/unina/androidripper/model/Robot;)V

    .line 41
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setExtractor(Lit/unina/androidripper/model/Extractor;)V

    .line 42
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V

    .line 45
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setValidation(Z)V

    .line 46
    new-instance v7, Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-direct {v7}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;-><init>()V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    .line 47
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    .line 48
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 49
    .local v0, c:Ljava/util/GregorianCalendar;
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setDateTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #c:Ljava/util/GregorianCalendar;
    :goto_0
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 55
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setSession(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "it.unina.androidripper.planning."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lit/unina/androidripper/planning/Resources;->PLANNER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, className:Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/unina/androidripper/planning/SimplePlanner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .local v5, p:Lit/unina/androidripper/planning/SimplePlanner;
    new-instance v4, Lit/unina/androidripper/filters/FormFilter;

    invoke-direct {v4}, Lit/unina/androidripper/filters/FormFilter;-><init>()V

    .line 70
    .local v4, inputFilter:Lit/unina/androidripper/model/Filter;
    invoke-virtual {v5, v4}, Lit/unina/androidripper/planning/SimplePlanner;->setInputFilter(Lit/unina/androidripper/model/Filter;)V

    .line 71
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7, v4}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addFilter(Lit/unina/androidripper/model/Filter;)V

    .line 73
    new-instance v3, Lit/unina/androidripper/filters/AllPassFilter;

    invoke-direct {v3}, Lit/unina/androidripper/filters/AllPassFilter;-><init>()V

    .line 74
    .local v3, eventFilter:Lit/unina/androidripper/model/Filter;
    invoke-virtual {v5, v3}, Lit/unina/androidripper/planning/SimplePlanner;->setEventFilter(Lit/unina/androidripper/model/Filter;)V

    .line 75
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7, v3}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addFilter(Lit/unina/androidripper/model/Filter;)V

    .line 76
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    new-instance v8, Lit/unina/androidripper/automation/SimpleTypeDetector;

    invoke-direct {v8}, Lit/unina/androidripper/automation/SimpleTypeDetector;-><init>()V

    invoke-virtual {v7, v8}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->setTypeDetector(Lit/unina/androidripper/model/TypeDetector;)V

    .line 78
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-static {v7}, Lit/unina/androidripper/planning/UserFactory;->getUser(Lit/unina/androidripper/model/Abstractor;)Lit/unina/androidripper/model/UserAdapter;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    .line 79
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setUser(Lit/unina/androidripper/model/EventHandler;)V

    .line 80
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setFormFiller(Lit/unina/androidripper/model/InputHandler;)V

    .line 81
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 82
    invoke-virtual {p0, v5}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setPlanner(Lit/unina/androidripper/model/Planner;)V

    .line 84
    new-instance v6, Lit/unina/androidripper/strategy/StrategyFactory;

    sget-object v7, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    sget-object v8, Lit/unina/androidripper/Resources;->ADDITIONAL_CRITERIAS:[Lit/unina/androidripper/model/StrategyCriteria;

    invoke-direct {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;-><init>(Lit/unina/androidripper/model/Comparator;[Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 85
    .local v6, sf:Lit/unina/androidripper/strategy/StrategyFactory;
    sget v7, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setDepth(I)V

    .line 86
    sget v7, Lit/unina/androidripper/strategy/Resources;->MAX_NUM_TRACES:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setMaxTraces(I)V

    .line 87
    sget-wide v7, Lit/unina/androidripper/strategy/Resources;->MAX_TIME_CRAWLING:J

    invoke-virtual {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;->setMaxSeconds(J)V

    .line 88
    sget-wide v7, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TIME:J

    invoke-virtual {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;->setPauseSeconds(J)V

    .line 89
    sget-boolean v7, Lit/unina/androidripper/strategy/Resources;->CHECK_FOR_TRANSITION:Z

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setCheckTransitions(Z)V

    .line 90
    sget v7, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TRACES:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setPauseTraces(I)V

    .line 91
    sget-boolean v7, Lit/unina/androidripper/strategy/Resources;->EXPLORE_ONLY_NEW_STATES:Z

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setExploreNewOnly(Z)V

    .line 92
    sget v7, Lit/unina/androidripper/strategy/Resources;->TRACE_MIN_DEPTH:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setMinDepth(I)V

    .line 93
    sget-object v7, Lit/unina/androidripper/strategy/Resources;->AFTER_EVENT_DONT_EXPLORE:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setStopEvents([Ljava/lang/String;)V

    .line 94
    sget-object v7, Lit/unina/androidripper/strategy/Resources;->AFTER_WIDGET_DONT_EXPLORE:[I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setStopWidgets([I)V

    .line 95
    iput-object v6, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    .line 98
    new-instance v7, Lit/unina/androidripper/storage/PersistenceFactory;

    iget-object v8, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lit/unina/androidripper/storage/PersistenceFactory;-><init>(Lcom/nofatclips/androidtesting/model/Session;Lit/unina/androidripper/planning/TraceDispatcher;)V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    .line 100
    return-void

    .line 50
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #eventFilter:Lit/unina/androidripper/model/Filter;
    .end local v4           #inputFilter:Lit/unina/androidripper/model/Filter;
    .end local v5           #p:Lit/unina/androidripper/planning/SimplePlanner;
    .end local v6           #sf:Lit/unina/androidripper/strategy/StrategyFactory;
    :catch_0
    move-exception v2

    .line 52
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 62
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1       #className:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 64
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error during planner instantiation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public getNewAutomation()Lit/unina/androidripper/automation/Automation;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lit/unina/androidripper/automation/Automation;

    invoke-direct {v0}, Lit/unina/androidripper/automation/Automation;-><init>()V

    return-object v0
.end method

.method public getNewScheduler()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher;

    invoke-direct {v0}, Lit/unina/androidripper/planning/TraceDispatcher;-><init>()V

    return-object v0
.end method

.method public getNewSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 2

    .prologue
    .line 201
    :try_start_0
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-direct {v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setUp()V
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    new-instance v1, Lit/unina/androidripper/helpers/PackageManagerHelper;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lit/unina/androidripper/helpers/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lit/unina/androidripper/automation/Automation;->packageManagerHelper:Lit/unina/androidripper/helpers/PackageManagerHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->USE_SENSORS:Z

    if-eqz v0, :cond_0

    .line 115
    sput-boolean v6, Lit/unina/android/hardware/SensorManager;->TESTING:Z

    .line 118
    :cond_0
    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->USE_GPS:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v1, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    .line 134
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    const/4 v10, 0x5

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v6

    move v9, v2

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 135
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 137
    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->FIX_GPS_POSITION:Z

    if-eqz v0, :cond_1

    .line 139
    new-instance v13, Landroid/location/Location;

    sget-object v0, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 140
    .local v13, location:Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 141
    const-wide v0, 0x403c932990f301ebL

    invoke-virtual {v13, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 142
    const-wide v0, 0x4053840b7c3504c5L

    invoke-virtual {v13, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 143
    const/high16 v0, 0x43fa

    invoke-virtual {v13, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 144
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v13}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 149
    .end local v13           #location:Landroid/location/Location;
    :cond_1
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    invoke-virtual {v0}, Lit/unina/androidripper/strategy/StrategyFactory;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v14

    .line 150
    .local v14, s:Lit/unina/androidripper/model/Strategy;
    invoke-virtual {p0, v14}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 151
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    invoke-virtual {v0, v14}, Lit/unina/androidripper/storage/PersistenceFactory;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 152
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    invoke-virtual {v0}, Lit/unina/androidripper/storage/PersistenceFactory;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setPersistence(Lit/unina/androidripper/model/Persistence;)V

    .line 154
    :try_start_1
    invoke-super {p0}, Lit/unina/androidripper/Engine;->setUp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_1
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    iget-object v1, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lit/unina/androidripper/automation/BasicRestarter;->setRestartPoint(Landroid/app/Activity;)V

    .line 160
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    iget-object v1, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v1}, Lit/unina/androidripper/automation/Automation;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setAppName(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v1, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_EVENT:I

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterEvent(I)V

    .line 162
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v1, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_RESTART:I

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterRestart(I)V

    .line 163
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v1, Lit/unina/androidripper/automation/Resources;->SLEEP_ON_THROBBER:I

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepOnThrobber(I)V

    .line 164
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v1, Lit/unina/androidripper/Resources;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setClassName(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v1, Lit/unina/androidripper/Resources;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setPackageName(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v1, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    invoke-interface {v1}, Lit/unina/androidripper/model/Comparator;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setComparationWidgets(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-boolean v1, Lit/unina/androidripper/automation/Resources;->IN_AND_OUT_FOCUS:Z

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setInAndOutFocus(Z)V

    .line 168
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v1, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_TASK:I

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterTask(I)V

    .line 169
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-wide v1, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-virtual {v0, v1, v2}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setRandomSeed(J)V

    .line 170
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v1, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setMaxDepth(I)V

    .line 171
    sget-boolean v0, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v1, Lit/unina/androidripper/storage/Resources;->ACTIVITY_LIST_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setStateFileName(Ljava/lang/String;)V

    .line 176
    :cond_2
    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->DICTIONARY_FIXED_VALUE:Z

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 180
    .local v11, ctx:Landroid/content/Context;
    if-nez v11, :cond_3

    .line 181
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 183
    :cond_3
    invoke-static {v11}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->init(Landroid/content/Context;)Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    .line 186
    .end local v11           #ctx:Landroid/content/Context;
    :cond_4
    return-void

    .line 155
    :catch_0
    move-exception v12

    .line 157
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 109
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #s:Lit/unina/androidripper/model/Strategy;
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public stepPersistence()Z
    .locals 1

    .prologue
    .line 218
    sget v0, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v0, v0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-super {p0}, Lit/unina/androidripper/Engine;->tearDown()V

    .line 196
    return-void
.end method
