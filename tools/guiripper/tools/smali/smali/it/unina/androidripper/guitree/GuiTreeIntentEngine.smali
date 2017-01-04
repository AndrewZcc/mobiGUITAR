.class public Lit/unina/androidripper/guitree/GuiTreeIntentEngine;
.super Lit/unina/androidripper/IntentEngine;
.source "GuiTreeIntentEngine.java"


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
    .line 34
    invoke-direct {p0}, Lit/unina/androidripper/IntentEngine;-><init>()V

    .line 36
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->getNewScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v7

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setScheduler(Lit/unina/androidripper/planning/TraceDispatcher;)V

    .line 38
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->getNewAutomation()Lit/unina/androidripper/automation/Automation;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    .line 39
    new-instance v7, Lit/unina/androidripper/automation/BasicRestarter;

    invoke-direct {v7}, Lit/unina/androidripper/automation/BasicRestarter;-><init>()V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    .line 40
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    iget-object v8, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    invoke-virtual {v7, v8}, Lit/unina/androidripper/automation/Automation;->setRestarter(Lit/unina/androidripper/model/Restarter;)V

    .line 41
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setRobot(Lit/unina/androidripper/model/Robot;)V

    .line 42
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setExtractor(Lit/unina/androidripper/model/Extractor;)V

    .line 43
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V

    .line 46
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setValidation(Z)V

    .line 47
    new-instance v7, Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-direct {v7}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;-><init>()V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    .line 48
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    .line 49
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 50
    .local v0, c:Ljava/util/GregorianCalendar;
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setDateTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0           #c:Ljava/util/GregorianCalendar;
    :goto_0
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 56
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setSession(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 59
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

    .line 62
    .local v1, className:Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/unina/androidripper/planning/SimplePlanner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .local v5, p:Lit/unina/androidripper/planning/SimplePlanner;
    new-instance v4, Lit/unina/androidripper/filters/FormFilter;

    invoke-direct {v4}, Lit/unina/androidripper/filters/FormFilter;-><init>()V

    .line 71
    .local v4, inputFilter:Lit/unina/androidripper/model/Filter;
    invoke-virtual {v5, v4}, Lit/unina/androidripper/planning/SimplePlanner;->setInputFilter(Lit/unina/androidripper/model/Filter;)V

    .line 72
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7, v4}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addFilter(Lit/unina/androidripper/model/Filter;)V

    .line 74
    new-instance v3, Lit/unina/androidripper/filters/AllPassFilter;

    invoke-direct {v3}, Lit/unina/androidripper/filters/AllPassFilter;-><init>()V

    .line 75
    .local v3, eventFilter:Lit/unina/androidripper/model/Filter;
    invoke-virtual {v5, v3}, Lit/unina/androidripper/planning/SimplePlanner;->setEventFilter(Lit/unina/androidripper/model/Filter;)V

    .line 76
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v7, v3}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addFilter(Lit/unina/androidripper/model/Filter;)V

    .line 77
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    new-instance v8, Lit/unina/androidripper/automation/SimpleTypeDetector;

    invoke-direct {v8}, Lit/unina/androidripper/automation/SimpleTypeDetector;-><init>()V

    invoke-virtual {v7, v8}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->setTypeDetector(Lit/unina/androidripper/model/TypeDetector;)V

    .line 79
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-static {v7}, Lit/unina/androidripper/planning/UserFactory;->getUser(Lit/unina/androidripper/model/Abstractor;)Lit/unina/androidripper/model/UserAdapter;

    move-result-object v7

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    .line 80
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setUser(Lit/unina/androidripper/model/EventHandler;)V

    .line 81
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->user:Lit/unina/androidripper/model/UserAdapter;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setFormFiller(Lit/unina/androidripper/model/InputHandler;)V

    .line 82
    iget-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->guiAbstractor:Lit/unina/androidripper/guitree/GuiTreeAbstractor;

    invoke-virtual {v5, v7}, Lit/unina/androidripper/planning/SimplePlanner;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 83
    invoke-virtual {p0, v5}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setPlanner(Lit/unina/androidripper/model/Planner;)V

    .line 85
    new-instance v6, Lit/unina/androidripper/strategy/StrategyFactory;

    sget-object v7, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    sget-object v8, Lit/unina/androidripper/Resources;->ADDITIONAL_CRITERIAS:[Lit/unina/androidripper/model/StrategyCriteria;

    invoke-direct {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;-><init>(Lit/unina/androidripper/model/Comparator;[Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 86
    .local v6, sf:Lit/unina/androidripper/strategy/StrategyFactory;
    sget v7, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setDepth(I)V

    .line 87
    sget v7, Lit/unina/androidripper/strategy/Resources;->MAX_NUM_TRACES:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setMaxTraces(I)V

    .line 88
    sget-wide v7, Lit/unina/androidripper/strategy/Resources;->MAX_TIME_CRAWLING:J

    invoke-virtual {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;->setMaxSeconds(J)V

    .line 89
    sget-wide v7, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TIME:J

    invoke-virtual {v6, v7, v8}, Lit/unina/androidripper/strategy/StrategyFactory;->setPauseSeconds(J)V

    .line 90
    sget-boolean v7, Lit/unina/androidripper/strategy/Resources;->CHECK_FOR_TRANSITION:Z

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setCheckTransitions(Z)V

    .line 91
    sget v7, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TRACES:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setPauseTraces(I)V

    .line 92
    sget-boolean v7, Lit/unina/androidripper/strategy/Resources;->EXPLORE_ONLY_NEW_STATES:Z

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setExploreNewOnly(Z)V

    .line 93
    sget v7, Lit/unina/androidripper/strategy/Resources;->TRACE_MIN_DEPTH:I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setMinDepth(I)V

    .line 94
    sget-object v7, Lit/unina/androidripper/strategy/Resources;->AFTER_EVENT_DONT_EXPLORE:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setStopEvents([Ljava/lang/String;)V

    .line 95
    sget-object v7, Lit/unina/androidripper/strategy/Resources;->AFTER_WIDGET_DONT_EXPLORE:[I

    invoke-virtual {v6, v7}, Lit/unina/androidripper/strategy/StrategyFactory;->setStopWidgets([I)V

    .line 96
    iput-object v6, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    .line 99
    new-instance v7, Lit/unina/androidripper/storage/PersistenceFactory;

    iget-object v8, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lit/unina/androidripper/storage/PersistenceFactory;-><init>(Lcom/nofatclips/androidtesting/model/Session;Lit/unina/androidripper/planning/TraceDispatcher;)V

    iput-object v7, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    .line 101
    return-void

    .line 51
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #eventFilter:Lit/unina/androidripper/model/Filter;
    .end local v4           #inputFilter:Lit/unina/androidripper/model/Filter;
    .end local v5           #p:Lit/unina/androidripper/planning/SimplePlanner;
    .end local v6           #sf:Lit/unina/androidripper/strategy/StrategyFactory;
    :catch_0
    move-exception v2

    .line 53
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 63
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1       #className:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 65
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

    .line 66
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public getNewAutomation()Lit/unina/androidripper/automation/Automation;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lit/unina/androidripper/automation/Automation;

    invoke-direct {v0}, Lit/unina/androidripper/automation/Automation;-><init>()V

    return-object v0
.end method

.method public getNewScheduler()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher;

    invoke-direct {v0}, Lit/unina/androidripper/planning/TraceDispatcher;-><init>()V

    return-object v0
.end method

.method public getNewSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 2

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-direct {v1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;-><init>()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setUp()V
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    invoke-virtual {v2}, Lit/unina/androidripper/strategy/StrategyFactory;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v1

    .line 106
    .local v1, s:Lit/unina/androidripper/model/Strategy;
    invoke-virtual {p0, v1}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 107
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    invoke-virtual {v2, v1}, Lit/unina/androidripper/storage/PersistenceFactory;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 108
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->thePersistenceFactory:Lit/unina/androidripper/storage/PersistenceFactory;

    invoke-virtual {v2}, Lit/unina/androidripper/storage/PersistenceFactory;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->setPersistence(Lit/unina/androidripper/model/Persistence;)V

    .line 110
    :try_start_0
    invoke-super {p0}, Lit/unina/androidripper/IntentEngine;->setUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theRestarter:Lit/unina/androidripper/automation/BasicRestarter;

    iget-object v3, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v3}, Lit/unina/androidripper/automation/Automation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lit/unina/androidripper/automation/BasicRestarter;->setRestartPoint(Landroid/app/Activity;)V

    .line 116
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    iget-object v3, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theAutomation:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v3}, Lit/unina/androidripper/automation/Automation;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setAppName(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v3, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_EVENT:I

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterEvent(I)V

    .line 118
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v3, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_RESTART:I

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterRestart(I)V

    .line 119
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v3, Lit/unina/androidripper/automation/Resources;->SLEEP_ON_THROBBER:I

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepOnThrobber(I)V

    .line 120
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v3, Lit/unina/androidripper/Resources;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setClassName(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v3, Lit/unina/androidripper/Resources;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setPackageName(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    invoke-interface {v3}, Lit/unina/androidripper/model/Comparator;->describe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setComparationWidgets(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-boolean v3, Lit/unina/androidripper/automation/Resources;->IN_AND_OUT_FOCUS:Z

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setInAndOutFocus(Z)V

    .line 124
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v3, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_TASK:I

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterTask(I)V

    .line 125
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-wide v3, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-virtual {v2, v3, v4}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setRandomSeed(J)V

    .line 126
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget v3, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setMaxDepth(I)V

    .line 127
    sget-boolean v2, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lit/unina/androidripper/guitree/GuiTreeIntentEngine;->theGuiTree:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    sget-object v3, Lit/unina/androidripper/storage/Resources;->ACTIVITY_LIST_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setStateFileName(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stepPersistence()Z
    .locals 1

    .prologue
    .line 152
    sget v0, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
