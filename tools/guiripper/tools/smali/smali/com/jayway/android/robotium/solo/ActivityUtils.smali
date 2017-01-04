.class Lcom/jayway/android/robotium/solo/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field private static final ACTIVITYSYNCTIME:I = 0x32


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MINISLEEP:I

.field private activitiesStoredInActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private activitySyncTimer:Ljava/util/Timer;

.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private weakActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "inst"
    .parameter "activity"
    .parameter "sleeper"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "Robotium"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->MINISLEEP:I

    .line 51
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    .line 52
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 53
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 54
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->createStackAndPushStartActivity()V

    .line 55
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    .line 57
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->setupActivityMonitor()V

    .line 58
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->setupActivityStackListener()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/jayway/android/robotium/solo/ActivityUtils;)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jayway/android/robotium/solo/ActivityUtils;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jayway/android/robotium/solo/ActivityUtils;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->removeActivityFromStack(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jayway/android/robotium/solo/ActivityUtils;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->addActivityToStack(Landroid/app/Activity;)V

    return-void
.end method

.method private addActivityToStack(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->weakActivityReference:Ljava/lang/ref/WeakReference;

    .line 213
    const/4 p1, 0x0

    .line 214
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->weakActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private clearActivityStack()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 359
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 360
    return-void
.end method

.method private createStackAndPushStartActivity()V
    .locals 2

    .prologue
    .line 68
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    .line 69
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .local v0, weakReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 72
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v0           #weakReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    return-void
.end method

.method private finishActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private removeActivityFromStack(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, activityStackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 151
    .local v0, activityFromWeakReference:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 159
    .end local v0           #activityFromWeakReference:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method private setupActivityMonitor()V
    .locals 5

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, filter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupActivityStackListener()V
    .locals 6

    .prologue
    .line 116
    new-instance v1, Lcom/jayway/android/robotium/solo/ActivityUtils$1;

    invoke-direct {v1, p0}, Lcom/jayway/android/robotium/solo/ActivityUtils$1;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V

    .line 136
    .local v1, activitySyncTimerTask:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 137
    return-void
.end method

.method private final waitForActivityIfNotAvailable()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityMonitor;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 229
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityMonitor;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->addActivityToStack(Landroid/app/Activity;)V

    .line 239
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    return-void

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 235
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->setupActivityMonitor()V

    .line 236
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->waitForActivityIfNotAvailable()V

    goto :goto_1
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 322
    return-void

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOpenedActivities()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 330
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 331
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    .local v0, activitiesOpened:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->finishActivity(Landroid/app/Activity;)V

    .line 333
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 338
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 340
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->finishActivity(Landroid/app/Activity;)V

    .line 341
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 342
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 345
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 346
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_1
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->clearActivityStack()V

    .line 351
    return-void

    .line 347
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    return-object v0
.end method

.method public getAllOpenedActivities()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Activity;>;"
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    .local v2, activityStackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 89
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1           #activity:Landroid/app/Activity;
    :cond_1
    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0, v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity(Z)Landroid/app/Activity;
    .locals 1
    .parameter "shouldSleepFirst"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity(ZZ)Landroid/app/Activity;
    .locals 1
    .parameter "shouldSleepFirst"
    .parameter "waitForActivity"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 253
    :cond_0
    if-eqz p2, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->waitForActivityIfNotAvailable()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "resId"

    .prologue
    .line 303
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 304
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public goBackToActivity(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, activitiesOpened:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Activity;>;"
    const/4 v1, 0x0

    .line 272
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    const/4 v1, 0x1

    .line 278
    :cond_0
    if-eqz v1, :cond_2

    .line 279
    :goto_1
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v3

    goto :goto_1

    .line 272
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 288
    const-string v4, "Robotium"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity priorly opened: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 290
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Activity named: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been priorly opened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 292
    :cond_4
    return-void
.end method

.method public hideSoftKeyboard(Landroid/widget/EditText;ZZ)V
    .locals 4
    .parameter "editText"
    .parameter "shouldSleepFirst"
    .parameter "shouldSleepAfter"

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 388
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 390
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_2

    .line 391
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 396
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 397
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ActivityUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 399
    :cond_1
    return-void

    .line 393
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setActivityOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 181
    return-void
.end method
