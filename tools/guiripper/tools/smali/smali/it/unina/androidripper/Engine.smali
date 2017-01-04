.class public abstract Lit/unina/androidripper/Engine;
.super Landroid/test/ActivityInstrumentationTestCase2;
.source "Engine.java"

# interfaces
.implements Lit/unina/androidripper/model/SaveStateListener;


# static fields
.field public static final ACTOR_NAME:Ljava/lang/String; = "Engine"

.field private static final PARAM_NAME:Ljava/lang/String; = "taskId"


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
    .line 30
    sget-object v0, Lit/unina/androidripper/Resources;->theClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;-><init>(Ljava/lang/Class;)V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/Engine;->id:I

    .line 31
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 32
    return-void
.end method

.method private takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theActivity"

    .prologue
    .line 334
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/unina/androidripper/Engine;->screenshotName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lit/unina/androidripper/automation/ScreenshotFactory;->saveScreenshot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/ActivityState;->setScreenshot(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected canPlanTests(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 1
    .parameter "theActivity"

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

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
    .line 208
    return-void
.end method

.method public getAbstractor()Lit/unina/androidripper/model/Abstractor;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    return-object v0
.end method

.method public getExtractor()Lit/unina/androidripper/model/Extractor;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theExtractor:Lit/unina/androidripper/model/Extractor;

    return-object v0
.end method

.method public getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    return-object v0
.end method

.method public getLastId()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lit/unina/androidripper/Engine;->id:I

    return v0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "Engine"

    return-object v0
.end method

.method public abstract getNewSession()Lcom/nofatclips/androidtesting/model/Session;
.end method

.method protected getNewTask(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;
    .locals 2
    .parameter "theTask"
    .parameter "t"

    .prologue
    .line 211
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lit/unina/androidripper/model/Abstractor;->createTrace(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    .line 212
    .local v0, newTrace:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->nextId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nofatclips/androidtesting/model/Trace;->setId(Ljava/lang/String;)V

    .line 213
    return-object v0
.end method

.method public getPersistence()Lit/unina/androidripper/model/Persistence;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lit/unina/androidripper/Engine;->thePersistence:Lit/unina/androidripper/model/Persistence;

    return-object v0
.end method

.method public getPlanner()Lit/unina/androidripper/model/Planner;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lit/unina/androidripper/Engine;->thePlanner:Lit/unina/androidripper/model/Planner;

    return-object v0
.end method

.method public getRobot()Lit/unina/androidripper/model/Robot;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theRobot:Lit/unina/androidripper/model/Robot;

    return-object v0
.end method

.method public getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theScheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    return-object v0
.end method

.method public getSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    return-object v0
.end method

.method public getStrategy()Lit/unina/androidripper/model/Strategy;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lit/unina/androidripper/Engine;->theStrategy:Lit/unina/androidripper/model/Strategy;

    return-object v0
.end method

.method public importActivitiyList(Lit/unina/androidripper/storage/ResumingPersistence;)V
    .locals 10
    .parameter "r"

    .prologue
    .line 138
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v7

    invoke-interface {v7}, Lit/unina/androidripper/model/Strategy;->getComparator()Lit/unina/androidripper/model/Comparator;

    move-result-object v7

    instance-of v7, v7, Lit/unina/androidripper/model/StatelessComparator;

    if-eqz v7, :cond_1

    .line 139
    const-string v7, "androidripper"

    const-string v8, "Stateless comparator: the state file will not be loaded."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getNewSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v4

    .line 145
    .local v4, sandboxSession:Lcom/nofatclips/androidtesting/model/Session;
    invoke-virtual {p1}, Lit/unina/androidripper/storage/ResumingPersistence;->readStateFile()Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
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

    .line 149
    .local v5, state:Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/Session;->parse(Ljava/lang/String;)V

    move-object v7, v4

    .line 150
    check-cast v7, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    invoke-virtual {v7}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 151
    .local v0, e:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v7

    invoke-interface {v7, v0}, Lit/unina/androidripper/model/Abstractor;->importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v3

    .line 152
    .local v3, s:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
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

    .line 155
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

    .line 156
    .local v5, state:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v7

    invoke-interface {v7, v5}, Lit/unina/androidripper/model/Strategy;->addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto :goto_1
.end method

.method public importTaskList(Lit/unina/androidripper/storage/ResumingPersistence;)V
    .locals 11
    .parameter "r"

    .prologue
    .line 161
    instance-of v3, p0, Lit/unina/androidripper/model/MemorylessEngine;

    .line 162
    .local v3, noLoadTasks:Z
    if-eqz v3, :cond_0

    .line 163
    const-string v8, "androidripper"

    const-string v9, "Memoryless engine: the task file will not be loaded. Looking for crashed traces."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getNewSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v4

    .line 168
    .local v4, sandboxSession:Lcom/nofatclips/androidtesting/model/Session;
    invoke-virtual {p1}, Lit/unina/androidripper/storage/ResumingPersistence;->readTaskFile()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
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

    .line 172
    .local v7, trace:Ljava/lang/String;
    invoke-interface {v4, v7}, Lcom/nofatclips/androidtesting/model/Session;->parse(Ljava/lang/String;)V

    move-object v8, v4

    .line 173
    check-cast v8, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    invoke-virtual {v8}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 174
    .local v0, e:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, v0}, Lit/unina/androidripper/model/Abstractor;->importTask(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v5

    .line 175
    .local v5, t:Lcom/nofatclips/androidtesting/model/Trace;
    invoke-interface {v5}, Lcom/nofatclips/androidtesting/model/Trace;->isFailed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
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

    .line 177
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/nofatclips/androidtesting/model/Session;->addCrashedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_0

    .line 178
    :cond_1
    if-eqz v3, :cond_2

    .line 179
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

    .line 181
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

    .line 182
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 185
    .end local v0           #e:Lorg/w3c/dom/Element;
    .end local v5           #t:Lcom/nofatclips/androidtesting/model/Trace;
    .end local v7           #trace:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v8

    invoke-virtual {v8, v6}, Lit/unina/androidripper/planning/TraceDispatcher;->addTasks(Ljava/util/Collection;)V

    .line 186
    return-void
.end method

.method protected nextId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lit/unina/androidripper/Engine;->id:I

    .line 303
    .local v0, num:I
    iget v1, p0, Lit/unina/androidripper/Engine;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/unina/androidripper/Engine;->id:I

    .line 304
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 3
    .parameter "sessionParams"

    .prologue
    .line 221
    const-string v0, "taskId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/Engine;->id:I

    .line 222
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored trace count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/Engine;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    const-string v1, "taskId"

    iget v2, p0, Lit/unina/androidripper/Engine;->id:I

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected planFirstTests(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theActivity"

    .prologue
    .line 189
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPlanner()Lit/unina/androidripper/model/Planner;

    move-result-object v1

    invoke-interface {v1, p1}, Lit/unina/androidripper/model/Planner;->getPlanForBaseActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    .line 190
    .local v0, thePlan:Lit/unina/androidripper/model/Plan;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lit/unina/androidripper/Engine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V

    .line 191
    return-void
.end method

.method protected planTests(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 2
    .parameter "theTask"
    .parameter "theActivity"

    .prologue
    .line 194
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPlanner()Lit/unina/androidripper/model/Planner;

    move-result-object v1

    invoke-interface {v1, p2}, Lit/unina/androidripper/model/Planner;->getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    .line 195
    .local v0, thePlan:Lit/unina/androidripper/model/Plan;
    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/Engine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V

    .line 196
    return-void
.end method

.method protected planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V
    .locals 4
    .parameter "baseTask"
    .parameter "thePlan"

    .prologue
    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
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

    .line 201
    .local v1, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p0, p1, v1}, Lit/unina/androidripper/Engine;->getNewTask(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v1           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lit/unina/androidripper/planning/TraceDispatcher;->addPlannedTasks(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method protected process(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "theTask"

    .prologue
    .line 94
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/Robot;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 95
    return-void
.end method

.method public resume()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-boolean v0, Lit/unina/androidripper/Resources;->ENABLE_RESUME:Z

    .line 113
    .local v0, flag:Z
    if-nez v0, :cond_1

    .line 114
    const-string v3, "androidripper"

    const-string v4, "Resume not enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v3

    instance-of v3, v3, Lit/unina/androidripper/storage/ResumingPersistence;

    if-nez v3, :cond_2

    .line 118
    const-string v3, "androidripper"

    const-string v4, "The instance of Persistence does not implement Resuming."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/storage/ResumingPersistence;

    .line 123
    .local v1, r:Lit/unina/androidripper/storage/ResumingPersistence;
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->canHasResume()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const-string v2, "androidripper"

    const-string v3, "Attempting to resume previous session"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v1}, Lit/unina/androidripper/Engine;->importTaskList(Lit/unina/androidripper/storage/ResumingPersistence;)V

    .line 128
    invoke-virtual {p0, v1}, Lit/unina/androidripper/Engine;->importActivitiyList(Lit/unina/androidripper/storage/ResumingPersistence;)V

    .line 130
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->loadParameters()V

    .line 131
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->setNotFirst()V

    .line 132
    invoke-virtual {v1}, Lit/unina/androidripper/storage/ResumingPersistence;->saveStep()V

    .line 134
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public retry()Z
    .locals 1

    .prologue
    .line 312
    sget-boolean v0, Lit/unina/androidripper/Resources;->RETRY_FAILED_TRACES:Z

    return v0
.end method

.method public screenshotEnabled()Z
    .locals 1

    .prologue
    .line 316
    sget-boolean v0, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_FOR_STATES:Z

    return v0
.end method

.method public screenshotEveryTrace()Z
    .locals 1

    .prologue
    .line 320
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
    .line 330
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

    .line 324
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->screenshotEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->screenshotEveryTrace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->isLastComparationPositive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 254
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    .line 255
    return-void
.end method

.method public setExtractor(Lit/unina/androidripper/model/Extractor;)V
    .locals 0
    .parameter "theExtractor"

    .prologue
    .line 238
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theExtractor:Lit/unina/androidripper/model/Extractor;

    .line 239
    return-void
.end method

.method public setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V
    .locals 0
    .parameter "theImageCaptor"

    .prologue
    .line 246
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    .line 247
    return-void
.end method

.method public setPersistence(Lit/unina/androidripper/model/Persistence;)V
    .locals 0
    .parameter "thePersistence"

    .prologue
    .line 286
    iput-object p1, p0, Lit/unina/androidripper/Engine;->thePersistence:Lit/unina/androidripper/model/Persistence;

    .line 287
    return-void
.end method

.method public setPlanner(Lit/unina/androidripper/model/Planner;)V
    .locals 0
    .parameter "thePlanner"

    .prologue
    .line 262
    iput-object p1, p0, Lit/unina/androidripper/Engine;->thePlanner:Lit/unina/androidripper/model/Planner;

    .line 263
    return-void
.end method

.method public setRobot(Lit/unina/androidripper/model/Robot;)V
    .locals 0
    .parameter "theRobot"

    .prologue
    .line 230
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theRobot:Lit/unina/androidripper/model/Robot;

    .line 231
    return-void
.end method

.method public setScheduler(Lit/unina/androidripper/planning/TraceDispatcher;)V
    .locals 0
    .parameter "theScheduler"

    .prologue
    .line 270
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theScheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    .line 271
    return-void
.end method

.method public setSession(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 294
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    .line 295
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 278
    iput-object p1, p0, Lit/unina/androidripper/Engine;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 279
    return-void
.end method

.method protected setUp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Landroid/test/ActivityInstrumentationTestCase2;->setUp()V

    .line 39
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;

    move-result-object v2

    invoke-static {v2}, Lit/unina/androidripper/automation/ScreenshotFactory;->setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v2

    invoke-interface {v2, p0}, Lit/unina/androidripper/model/Robot;->bind(Landroid/test/ActivityInstrumentationTestCase2;)V

    .line 43
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/Extractor;->extractState()V

    .line 44
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/Extractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v2

    sget-object v3, Lit/unina/androidripper/storage/Resources;->FILE_NAME:Ljava/lang/String;

    invoke-interface {v2, v3}, Lit/unina/androidripper/model/Persistence;->setFileName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v2

    invoke-interface {v2, v0}, Lit/unina/androidripper/model/Persistence;->setContext(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/Extractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;

    move-result-object v1

    .line 48
    .local v1, d:Lit/unina/androidripper/model/ActivityDescription;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v2

    invoke-interface {v2, v1}, Lit/unina/androidripper/model/Abstractor;->setBaseActivity(Lit/unina/androidripper/model/ActivityDescription;)V

    .line 49
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->resume()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->setupAfterResume()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->setupFirstStart()V

    goto :goto_0
.end method

.method protected setupAfterResume()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected setupFirstStart()V
    .locals 3

    .prologue
    .line 57
    const-string v1, "androidripper"

    const-string v2, "Starting a new session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v1

    invoke-interface {v1}, Lit/unina/androidripper/model/Abstractor;->getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    .line 59
    .local v0, baseActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lit/unina/androidripper/model/Strategy;->addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 60
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->screenshotEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, v0}, Lit/unina/androidripper/Engine;->takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Lit/unina/androidripper/Engine;->planFirstTests(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 64
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
    .line 103
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/Trace;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v1

    invoke-interface {v1}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nofatclips/androidtesting/model/Session;->addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Persistence;->save()V

    .line 107
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Robot;->finalize()V

    .line 108
    invoke-super {p0}, Landroid/test/ActivityInstrumentationTestCase2;->tearDown()V

    .line 109
    return-void
.end method

.method public testAndCrawl()V
    .locals 7

    .prologue
    .line 69
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

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

    .line 70
    .local v4, theTask:Lcom/nofatclips/androidtesting/model/Trace;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 71
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/Trace;->setDateTime(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5, v4}, Lit/unina/androidripper/model/Strategy;->setTask(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 73
    invoke-virtual {p0, v4}, Lit/unina/androidripper/Engine;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 74
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getExtractor()Lit/unina/androidripper/model/Extractor;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Extractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;

    move-result-object v1

    .line 75
    .local v1, d:Lit/unina/androidripper/model/ActivityDescription;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v5

    invoke-interface {v5, v1}, Lit/unina/androidripper/model/Abstractor;->createActivity(Lit/unina/androidripper/model/ActivityDescription;)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v3

    .line 76
    .local v3, theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5, v3}, Lit/unina/androidripper/model/Strategy;->compareState(Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    .line 77
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->screenshotNeeded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-direct {p0, v3}, Lit/unina/androidripper/Engine;->takeScreenshot(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v5

    sget v6, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_TASK:I

    invoke-interface {v5, v6}, Lit/unina/androidripper/model/Robot;->wait(I)V

    .line 81
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForTransition()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lit/unina/androidripper/model/Abstractor;->setFinalActivity(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 83
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getPersistence()Lit/unina/androidripper/model/Persistence;

    move-result-object v5

    invoke-interface {v5, v4}, Lit/unina/androidripper/model/Persistence;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 84
    invoke-virtual {p0, v3}, Lit/unina/androidripper/Engine;->canPlanTests(Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {p0, v4, v3}, Lit/unina/androidripper/Engine;->planTests(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForTermination()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v5

    invoke-interface {v5}, Lit/unina/androidripper/model/Strategy;->checkForPause()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    .end local v0           #c:Ljava/util/GregorianCalendar;
    .end local v1           #d:Lit/unina/androidripper/model/ActivityDescription;
    .end local v3           #theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    .end local v4           #theTask:Lcom/nofatclips/androidtesting/model/Trace;
    :cond_2
    return-void

    .line 87
    .restart local v0       #c:Ljava/util/GregorianCalendar;
    .restart local v1       #d:Lit/unina/androidripper/model/ActivityDescription;
    .restart local v3       #theActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    .restart local v4       #theTask:Lcom/nofatclips/androidtesting/model/Trace;
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/Engine;->doNotPlanTests()V

    goto :goto_0
.end method
