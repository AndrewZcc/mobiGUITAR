.class public abstract Lit/unina/androidripper/IntentEngine;
.super Landroid/test/InstrumentationTestCase;
.source "IntentEngine.java"

# interfaces
.implements Lit/unina/androidripper/model/SaveStateListener;


# static fields
.field public static final ACTOR_NAME:Ljava/lang/String; = "IntentEngine"

.field private static final PARAM_NAME:Ljava/lang/String; = "taskId"

.field public static final TAG:Ljava/lang/String; = "IntentEngine"


# instance fields
.field private id:I

.field private theAbstractor:Lit/unina/androidripper/model/Abstractor;

.field private theExtractor:Lit/unina/androidripper/model/Extractor;

.field private theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

.field private thePersistence:Lit/unina/androidripper/model/Persistence;

.field private thePlanner:Lit/unina/androidripper/model/Planner;

.field private theRobot:Lit/unina/androidripper/model/Robot;

.field private theScheduler:Lit/unina/androidripper/planning/TraceDispatcher;

.field private theSession:Lcom/nofatclips/androidtesting/model/Session;

.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/IntentEngine;->id:I

    .line 63
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 64
    return-void
.end method

.method private doSleep(I)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 425
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theActivity"

    .prologue
    .line 384
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/IntentEngine;->screenshotName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lit/unina/androidripper/automation/ScreenshotFactory;->saveScreenshot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/ActivityState;->setScreenshot(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitForMonitor(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 1
    .parameter "instrumentation"
    .parameter "monitor"

    .prologue
    .line 414
    const/16 v0, 0xbb8

    invoke-direct {p0, p1, p2, v0}, Lit/unina/androidripper/IntentEngine;->waitForMonitor(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityMonitor;I)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private waitForMonitor(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityMonitor;I)Landroid/app/Activity;
    .locals 2
    .parameter "instrumentation"
    .parameter "monitor"
    .parameter "time"

    .prologue
    .line 419
    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected canPlanTests(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 1
    .parameter "theActivity"

    .prologue
    .line 140
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->checkForExploration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doNotPlanTests()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public getAbstractor()Lit/unina/androidripper/model/Abstractor;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    return-object v0
.end method

.method public getExtractor()Lit/unina/androidripper/model/Extractor;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theExtractor:Lit/unina/androidripper/model/Extractor;

    return-object v0
.end method

.method public getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    return-object v0
.end method

.method public getLastId()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lit/unina/androidripper/IntentEngine;->id:I

    return v0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "IntentEngine"

    return-object v0
.end method

.method public abstract getNewSession()Lcom/nofatclips/androidtesting/model/Session;
.end method

.method protected getNewTask(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;
    .locals 2
    .parameter "theTask"
    .parameter "t"

    .prologue
    .line 261
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lit/unina/androidripper/model/Abstractor;->createTrace(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    .line 262
    .local v0, newTrace:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->nextId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nofatclips/androidtesting/model/Trace;->setId(Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method public getPersistence()Lit/unina/androidripper/model/Persistence;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->thePersistence:Lit/unina/androidripper/model/Persistence;

    return-object v0
.end method

.method public getPlanner()Lit/unina/androidripper/model/Planner;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->thePlanner:Lit/unina/androidripper/model/Planner;

    return-object v0
.end method

.method public getRobot()Lit/unina/androidripper/model/Robot;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theRobot:Lit/unina/androidripper/model/Robot;

    return-object v0
.end method

.method public getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theScheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    return-object v0
.end method

.method public getSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    return-object v0
.end method

.method public getStrategy()Lit/unina/androidripper/model/Strategy;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lit/unina/androidripper/IntentEngine;->theStrategy:Lit/unina/androidripper/model/Strategy;

    return-object v0
.end method

.method public importActivitiyList(Lit/unina/androidripper/storage/ResumingPersistence;)V
    .locals 10
    .parameter "r"

    .prologue
    .line 183
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v7

    invoke-interface {v7}, Lit/unina/androidripper/model/Strategy;->getComparator()Lit/unina/androidripper/model/Comparator;

    move-result-object v7

    instance-of v7, v7, Lit/unina/androidripper/model/StatelessComparator;

    if-eqz v7, :cond_1

    .line 184
    const-string v7, "androidripper"

    const-string v8, "Stateless comparator: the state file will not be loaded."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getNewSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v4

    .line 190
    .local v4, sandboxSession:Lcom/nofatclips/androidtesting/model/Session;
    invoke-virtual {p1}, Lit/unina/androidripper/storage/ResumingPersistence;->readStateFile()Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v6, stateList:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/ActivityState;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 194
    .local v5, state:Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/Session;->parse(Ljava/lang/String;)V

    move-object v7, v4

    .line 195
    check-cast v7, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    invoke-virtual {v7}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 196
    .local v0, e:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v7

    invoke-interface {v7, v0}, Lit/unina/androidripper/model/Abstractor;->importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v3

    .line 197
    .local v3, s:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Imported activity state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from disk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    .end local v0           #e:Lorg/w3c/dom/Element;
    .end local v3           #s:Lcom/nofatclips/androidtesting/model/ActivityState;
    .end local v5           #state:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nofatclips/androidtesting/model/ActivityState;

    .line 201
    .local v5, state:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v7

    invoke-interface {v7, v5}, Lit/unina/androidripper/model/Strategy;->addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto :goto_1
.end method

.method public importTaskList(Lit/unina/androidripper/storage/ResumingPersistence;)V
    .locals 11
    .parameter "r"

    .prologue
    .line 206
    instance-of v3, p0, Lit/unina/androidripper/model/MemorylessEngine;

    .line 207
    .local v3, noLoadTasks:Z
    if-eqz v3, :cond_0

    .line 208
    const-string v8, "androidripper"

    const-string v9, "Memoryless engine: the task file will not be loaded. Looking for crashed traces."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getNewSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v4

    .line 213
    .local v4, sandboxSession:Lcom/nofatclips/androidtesting/model/Session;
    invoke-virtual {p1}, Lit/unina/androidripper/storage/ResumingPersistence;->readTaskFile()Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 217
    .local v7, trace:Ljava/lang/String;
    invoke-interface {v4, v7}, Lcom/nofatclips/androidtesting/model/Session;->parse(Ljava/lang/String;)V

    move-object v8, v4

    .line 218
    check-cast v8, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    invoke-virtual {v8}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 219
    .local v0, e:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, v0}, Lit/unina/androidripper/model/Abstractor;->importTask(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v5

    .line 220
    .local v5, t:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-interface {v5}, Lcom/nofatclips/androidtesting/model/Trace;->isFailed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    const-string v8, "androidripper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Importing crashed trace #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from disk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/nofatclips/androidtesting/model/Session;->addCrashedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_0

    .line 223
    :cond_1
    if-eqz v3, :cond_2

    .line 224
    const-string v8, "androidripper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarding trace #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_2
    const-string v8, "androidripper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Importing trace #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from disk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 230
    .end local v0           #e:Lorg/w3c/dom/Element;
    .end local v5           #t:Lcom/nofatclips/androidtesting/model/Trace;
    .end local v7           #trace:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v8

    invoke-virtual {v8, v6}, Lit/unina/androidripper/planning/TraceDispatcher;->addTasks(Ljava/util/Collection;)V

    .line 231
    return-void
.end method

.method protected nextId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lit/unina/androidripper/IntentEngine;->id:I

    .line 353
    .local v0, num:I
    iget v1, p0, Lit/unina/androidripper/IntentEngine;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/unina/androidripper/IntentEngine;->id:I

    .line 354
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 3
    .parameter "sessionParams"

    .prologue
    .line 271
    const-string v0, "taskId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/IntentEngine;->id:I

    .line 272
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored trace count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/IntentEngine;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    const-string v1, "taskId"

    iget v2, p0, Lit/unina/androidripper/IntentEngine;->id:I

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected planFirstTests(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theActivity"

    .prologue
    .line 234
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPlanner()Lit/unina/androidripper/model/Planner;

    move-result-object v1

    invoke-interface {v1, p1}, Lit/unina/androidripper/model/Planner;->getPlanForBaseActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    .line 235
    .local v0, thePlan:Lit/unina/androidripper/model/Plan;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lit/unina/androidripper/IntentEngine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V

    .line 236
    return-void
.end method

.method protected planTests(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theTask"
    .parameter "theActivity"

    .prologue
    .line 239
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPlanner()Lit/unina/androidripper/model/Planner;

    move-result-object v1

    invoke-interface {v1, p2}, Lit/unina/androidripper/model/Planner;->getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    .line 240
    .local v0, thePlan:Lit/unina/androidripper/model/Plan;
    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/IntentEngine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V

    .line 241
    return-void
.end method

.method protected planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V
    .locals 4
    .parameter "baseTask"
    .parameter "thePlan"

    .prologue
    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    invoke-virtual {p2}, Lit/unina/androidripper/model/Plan;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Transition;

    .line 246
    .local v1, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p0, p1, v1}, Lit/unina/androidripper/IntentEngine;->getNewTask(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v1           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lit/unina/androidripper/planning/TraceDispatcher;->addPlannedTasks(Ljava/util/List;)V

    .line 254
    return-void
.end method

.method protected process(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "theTask"

    .prologue
    .line 136
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/Robot;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 137
    return-void
.end method

.method public resume()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-boolean v0, Lit/unina/androidripper/Resources;->ENABLE_RESUME:Z

    .line 155
    .local v0, flag:Z
    if-nez v0, :cond_1

    .line 156
    const-string v3, "androidripper"

    const-string v4, "Resume not enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v3

    instance-of v3, v3, Lit/unina/androidripper/storage/ResumingPersistence;

    if-nez v3, :cond_2

    .line 160
    const-string v3, "androidripper"

    const-string v4, "The instance of Persistence does not implement Resuming."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/storage/ResumingPersistence;

    .line 165
    .local v1, r:Lit/unina/androidripper/storage/ResumingPersistence;
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->canHasResume()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v2, "androidripper"

    const-string v3, "Attempting to resume previous session"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0, v1}, Lit/unina/androidripper/IntentEngine;->importTaskList(Lit/unina/androidripper/storage/ResumingPersistence;)V

    .line 173
    invoke-virtual {p0, v1}, Lit/unina/androidripper/IntentEngine;->importActivitiyList(Lit/unina/androidripper/storage/ResumingPersistence;)V

    .line 175
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->loadParameters()V

    .line 176
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->setNotFirst()V

    .line 177
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->saveStep()V

    .line 179
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public retry()Z
    .locals 1

    .prologue
    .line 362
    sget-boolean v0, Lit/unina/androidripper/Resources;->RETRY_FAILED_TRACES:Z

    return v0
.end method

.method public screenshotEnabled()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_FOR_STATES:Z

    return v0
.end method

.method public screenshotEveryTrace()Z
    .locals 1

    .prologue
    .line 370
    sget-boolean v0, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_ONLY_NEW_STATES:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public screenshotName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "stateId"

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lit/unina/androidripper/automation/ScreenshotFactory;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public screenshotNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->screenshotEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->screenshotEveryTrace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->isLastComparationPositive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected sendIntent(Landroid/app/Instrumentation;)Landroid/app/Activity;
    .locals 5
    .parameter "instrumentation"

    .prologue
    .line 394
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_ACTIVITY:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v1

    .line 395
    .local v1, monitor:Landroid/app/Instrumentation$ActivityMonitor;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_FLAGS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lit/unina/androidripper/Resources;->INTENT_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_CATEGORY:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_CATEGORY:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_0
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_DATA:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_DATA:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_DATA:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    :cond_1
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_TYPE:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_TYPE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    sget-object v2, Lit/unina/androidripper/Resources;->INTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    .line 409
    invoke-direct {p0, p1, v1}, Lit/unina/androidripper/IntentEngine;->waitForMonitor(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object v2

    return-object v2
.end method

.method public setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 304
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    .line 305
    return-void
.end method

.method public setExtractor(Lit/unina/androidripper/model/Extractor;)V
    .locals 0
    .parameter "theExtractor"

    .prologue
    .line 288
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theExtractor:Lit/unina/androidripper/model/Extractor;

    .line 289
    return-void
.end method

.method public setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V
    .locals 0
    .parameter "theImageCaptor"

    .prologue
    .line 296
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    .line 297
    return-void
.end method

.method public setPersistence(Lit/unina/androidripper/model/Persistence;)V
    .locals 0
    .parameter "thePersistence"

    .prologue
    .line 336
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->thePersistence:Lit/unina/androidripper/model/Persistence;

    .line 337
    return-void
.end method

.method public setPlanner(Lit/unina/androidripper/model/Planner;)V
    .locals 0
    .parameter "thePlanner"

    .prologue
    .line 312
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->thePlanner:Lit/unina/androidripper/model/Planner;

    .line 313
    return-void
.end method

.method public setRobot(Lit/unina/androidripper/model/Robot;)V
    .locals 0
    .parameter "theRobot"

    .prologue
    .line 280
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theRobot:Lit/unina/androidripper/model/Robot;

    .line 281
    return-void
.end method

.method public setScheduler(Lit/unina/androidripper/planning/TraceDispatcher;)V
    .locals 0
    .parameter "theScheduler"

    .prologue
    .line 320
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theScheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    .line 321
    return-void
.end method

.method public setSession(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 344
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    .line 345
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 328
    iput-object p1, p0, Lit/unina/androidripper/IntentEngine;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 329
    return-void
.end method

.method protected setUp()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    .line 72
    const/4 v1, 0x0

    .line 76
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lit/unina/androidripper/IntentEngine;->sendIntent(Landroid/app/Instrumentation;)Landroid/app/Activity;

    move-result-object v1

    .line 78
    const-string v4, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;

    move-result-object v3

    invoke-static {v3}, Lit/unina/androidripper/automation/ScreenshotFactory;->setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v3

    invoke-interface {v3, p0, v1}, Lit/unina/androidripper/model/Robot;->bindInstrumentationTestCase(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v3

    invoke-interface {v3}, Lit/unina/androidripper/model/Extractor;->extractState()V

    .line 85
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v3

    invoke-interface {v3}, Lit/unina/androidripper/model/Extractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v3

    sget-object v4, Lit/unina/androidripper/storage/Resources;->FILE_NAME:Ljava/lang/String;

    invoke-interface {v3, v4}, Lit/unina/androidripper/model/Persistence;->setFileName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v3

    invoke-interface {v3, v0}, Lit/unina/androidripper/model/Persistence;->setContext(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v3

    invoke-interface {v3}, Lit/unina/androidripper/model/Extractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;

    move-result-object v2

    .line 89
    .local v2, d:Lit/unina/androidripper/model/ActivityDescription;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v3

    invoke-interface {v3, v2}, Lit/unina/androidripper/model/Abstractor;->setBaseActivity(Lit/unina/androidripper/model/ActivityDescription;)V

    .line 90
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->resume()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->setupAfterResume()V

    .line 95
    :goto_1
    return-void

    .line 78
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #d:Lit/unina/androidripper/model/ActivityDescription;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 93
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #d:Lit/unina/androidripper/model/ActivityDescription;
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->setupFirstStart()V

    goto :goto_1
.end method

.method protected setupAfterResume()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected setupFirstStart()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "androidripper"

    const-string v2, "Starting a new session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v1

    invoke-interface {v1}, Lit/unina/androidripper/model/Abstractor;->getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    .line 100
    .local v0, baseActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lit/unina/androidripper/model/Strategy;->addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 101
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->screenshotEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-direct {p0, v0}, Lit/unina/androidripper/IntentEngine;->takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lit/unina/androidripper/IntentEngine;->planFirstTests(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 105
    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/Trace;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v1

    invoke-interface {v1}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nofatclips/androidtesting/model/Session;->addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Persistence;->save()V

    .line 149
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Robot;->finalize()V

    .line 150
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    .line 151
    return-void
.end method

.method public testAndCrawl()V
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Lit/unina/androidripper/planning/TraceDispatcher;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nofatclips/androidtesting/model/Trace;

    .line 111
    .local v4, theTask:Lcom/nofatclips/androidtesting/model/Trace;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 112
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/Trace;->setDateTime(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5, v4}, Lit/unina/androidripper/model/Strategy;->setTask(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 115
    invoke-virtual {p0, v4}, Lit/unina/androidripper/IntentEngine;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 116
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Extractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;

    move-result-object v1

    .line 117
    .local v1, d:Lit/unina/androidripper/model/ActivityDescription;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v5

    invoke-interface {v5, v1}, Lit/unina/androidripper/model/Abstractor;->createActivity(Lit/unina/androidripper/model/ActivityDescription;)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v3

    .line 118
    .local v3, theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5, v3}, Lit/unina/androidripper/model/Strategy;->compareState(Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    .line 119
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->screenshotNeeded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    invoke-direct {p0, v3}, Lit/unina/androidripper/IntentEngine;->takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v5

    sget v6, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_TASK:I

    invoke-interface {v5, v6}, Lit/unina/androidripper/model/Robot;->wait(I)V

    .line 123
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForTransition()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lit/unina/androidripper/model/Abstractor;->setFinalActivity(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 125
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v5

    invoke-interface {v5, v4}, Lit/unina/androidripper/model/Persistence;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 126
    invoke-virtual {p0, v3}, Lit/unina/androidripper/IntentEngine;->canPlanTests(Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    invoke-virtual {p0, v4, v3}, Lit/unina/androidripper/IntentEngine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForTermination()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForPause()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    .end local v0           #c:Ljava/util/GregorianCalendar;
    .end local v1           #d:Lit/unina/androidripper/model/ActivityDescription;
    .end local v3           #theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    .end local v4           #theTask:Lcom/nofatclips/androidtesting/model/Trace;
    :cond_2
    return-void

    .line 129
    .restart local v0       #c:Ljava/util/GregorianCalendar;
    .restart local v1       #d:Lit/unina/androidripper/model/ActivityDescription;
    .restart local v3       #theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    .restart local v4       #theTask:Lcom/nofatclips/androidtesting/model/Trace;
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/IntentEngine;->doNotPlanTests()V

    goto :goto_0
.end method
