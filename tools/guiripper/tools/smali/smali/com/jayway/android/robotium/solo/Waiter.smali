.class Lcom/jayway/android/robotium/solo/Waiter;
.super Ljava/lang/Object;
.source "Waiter.java"


# instance fields
.field private final MINISLEEP:I

.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final scroller:Lcom/jayway/android/robotium/solo/Scroller;

.field private final searcher:Lcom/jayway/android/robotium/solo/Searcher;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Searcher;Lcom/jayway/android/robotium/solo/Scroller;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "searcher"
    .parameter "scroller"
    .parameter "sleeper"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/jayway/android/robotium/solo/Waiter;->MINISLEEP:I

    .line 47
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 48
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Waiter;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 49
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    .line 50
    iput-object p4, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    .line 51
    iput-object p5, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 52
    return-void
.end method

.method private destroy(Ljava/lang/Process;Ljava/io/BufferedReader;)V
    .locals 1
    .parameter "p"
    .parameter "reader"

    .prologue
    .line 628
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 630
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getFragment(Ljava/lang/String;I)Landroid/app/Fragment;
    .locals 1
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLog(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "stringBuilder"

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, p:Ljava/lang/Process;
    const/4 v3, 0x0

    .line 589
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 592
    .local v1, line:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "logcat -d"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 593
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 597
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 601
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 603
    .end local v0           #e:Ljava/io/IOException;
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/jayway/android/robotium/solo/Waiter;->destroy(Ljava/lang/Process;Ljava/io/BufferedReader;)V

    .line 604
    return-object p1

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_0
    move-object v3, v4

    .line 602
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 600
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSupportFragment(Ljava/lang/String;I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 542
    .local v1, fragmentActivity:Landroid/support/v4/app/FragmentActivity;
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    :goto_0
    if-eqz v1, :cond_1

    .line 547
    if-nez p1, :cond_0

    .line 548
    :try_start_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 553
    :goto_1
    return-object v2

    .line 550
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 551
    :catch_0
    move-exception v2

    .line 553
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 543
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clearLog()V
    .locals 4

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 614
    .local v1, p:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "logcat -c"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 618
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForActivity(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public waitForActivity(Ljava/lang/Class;I)Z
    .locals 8
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v3, 0x0

    .line 112
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, currentActivity:Landroid/app/Activity;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v1, v4, v6

    .line 115
    .local v1, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    .line 116
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v3, 0x1

    .line 123
    :cond_0
    return v3

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 121
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public waitForActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public waitForActivity(Ljava/lang/String;I)Z
    .locals 8
    .parameter "name"
    .parameter "timeout"

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, currentActivity:Landroid/app/Activity;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v1, v4, v6

    .line 79
    .local v1, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    .line 80
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const/4 v3, 0x1

    .line 87
    :cond_0
    return v3

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 85
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;
    .locals 13
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v11

    int-to-long v11, v11

    add-long v1, v9, v11

    .line 482
    .local v1, endTime:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-gtz v9, :cond_1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, p2, p1, v9, v10}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IZZ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 483
    :cond_1
    iget-object v9, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {v9}, Lcom/jayway/android/robotium/solo/Searcher;->getNumberOfUniqueViews()I

    move-result v6

    .line 484
    .local v6, numberOfUniqueViews:I
    iget-object v9, p0, Lcom/jayway/android/robotium/solo/Waiter;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v9, p2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    .line 486
    .local v8, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v6, :cond_2

    .line 487
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v6, v9

    sub-int v5, p1, v9

    .line 488
    .local v5, newIndex:I
    if-ltz v5, :cond_2

    .line 489
    move p1, v5

    .line 492
    .end local v5           #newIndex:I
    :cond_2
    const/4 v7, 0x0

    .line 494
    .local v7, view:Landroid/view/View;,"TT;"
    :try_start_0
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    const/4 v8, 0x0

    .line 505
    return-object v7

    .line 495
    :catch_0
    move-exception v3

    .line 496
    .local v3, exception:Ljava/lang/IndexOutOfBoundsException;
    add-int/lit8 v4, p1, 0x1

    .line 497
    .local v4, match:I
    const/4 v9, 0x1

    if-le v4, v9, :cond_3

    .line 498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " are not found!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 501
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not found!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public waitForCondition(Lcom/jayway/android/robotium/solo/Condition;I)Z
    .locals 9
    .parameter "condition"
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    int-to-long v7, p2

    add-long v0, v5, v7

    .line 354
    .local v0, endTime:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    move v2, v4

    .line 355
    .local v2, timedOut:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 362
    :goto_1
    return v3

    .end local v2           #timedOut:Z
    :cond_1
    move v2, v3

    .line 354
    goto :goto_0

    .line 359
    .restart local v2       #timedOut:Z
    :cond_2
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 361
    invoke-interface {p1}, Lcom/jayway/android/robotium/solo/Condition;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 362
    goto :goto_1
.end method

.method public waitForFragment(Ljava/lang/String;II)Z
    .locals 7
    .parameter "tag"
    .parameter "id"
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, p3

    add-long v0, v3, v5

    .line 519
    .local v0, endTime:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_2

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->getSupportFragment(Ljava/lang/String;I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 527
    :goto_0
    return v2

    .line 524
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->getFragment(Ljava/lang/String;I)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 527
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public waitForLogMessage(Ljava/lang/String;I)Z
    .locals 7
    .parameter "logMessage"
    .parameter "timeout"

    .prologue
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long v0, v3, v5

    .line 569
    .local v0, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    .line 571
    invoke-direct {p0, v2}, Lcom/jayway/android/robotium/solo/Waiter;->getLog(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 572
    const/4 v3, 0x1

    .line 576
    :goto_1
    return v3

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    .line 576
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 9
    .parameter
    .parameter "text"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "IJZ)TT;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;
    .locals 12
    .parameter
    .parameter "text"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .parameter "onlyVisible"
    .parameter "hardStoppage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "IJZZZ)TT;"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v8, v0, p4

    .line 454
    .local v8, endTime:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    const/4 v11, 0x1

    .line 455
    .local v11, timedOut:Z
    :goto_0
    if-eqz v11, :cond_2

    .line 456
    const/4 v10, 0x0

    .line 467
    :goto_1
    return-object v10

    .line 454
    .end local v11           #timedOut:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 459
    .restart local v11       #timedOut:Z
    :cond_2
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 461
    if-nez p8, :cond_3

    .line 462
    const-wide/16 p4, 0x0

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;

    move-result-object v10

    .line 466
    .local v10, textViewToReturn:Landroid/widget/TextView;,"TT;"
    if-eqz v10, :cond_0

    goto :goto_1
.end method

.method public waitForText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6
    .parameter "text"

    .prologue
    .line 375
    const/4 v2, 0x0

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v0

    int-to-long v3, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForText(Ljava/lang/String;IJ)Landroid/widget/TextView;
    .locals 6
    .parameter "text"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"

    .prologue
    .line 389
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 9
    .parameter "text"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    .line 403
    const-class v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;
    .locals 9
    .parameter "text"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .parameter "onlyVisible"
    .parameter "hardStoppage"

    .prologue
    .line 434
    const-class v1, Landroid/widget/TextView;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForView(II)Landroid/view/View;
    .locals 2
    .parameter "id"
    .parameter "index"

    .prologue
    .line 275
    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(IIIZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public waitForView(IIIZ)Landroid/view/View;
    .locals 11
    .parameter "id"
    .parameter "index"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    const/4 v10, 0x0

    .line 287
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v4, uniqueViewsMatchingId:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    int-to-long v8, p3

    add-long v0, v6, v8

    .line 290
    .local v0, endTime:J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gtz v6, :cond_3

    .line 291
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v6}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 293
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Waiter;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v6, v10}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 294
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 296
    .local v3, idOfView:Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 297
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, p2, :cond_1

    .line 307
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #idOfView:Ljava/lang/Integer;
    .end local v5           #view:Landroid/view/View;
    :goto_1
    return-object v5

    .line 304
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz p4, :cond_0

    .line 305
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v6, v10}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    goto :goto_0

    .line 307
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public waitForView(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 221
    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "timeout"

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(Landroid/view/View;IZ)Z
    .locals 8
    .parameter "view"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    const/4 v3, 0x0

    .line 246
    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v3

    .line 249
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v0, v4, v6

    .line 251
    .local v0, endTime:J
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 254
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {v4, p1}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Landroid/view/View;)Z

    move-result v2

    .line 256
    .local v2, foundAnyMatchingView:Z
    if-eqz v2, :cond_3

    .line 257
    const/4 v3, 0x1

    goto :goto_0

    .line 260
    :cond_3
    if-eqz p3, :cond_2

    .line 261
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    goto :goto_1
.end method

.method public waitForView(Ljava/lang/Class;IIZ)Z
    .locals 9
    .parameter
    .parameter "index"
    .parameter "timeout"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;IIZ)Z"
        }
    .end annotation

    .prologue
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 169
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v3, uniqueViews:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    int-to-long v7, p3

    add-long v0, v5, v7

    .line 173
    .local v0, endTime:J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_1

    .line 174
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 176
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {v5, v3, p1, p2}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z

    move-result v2

    .line 178
    .local v2, foundMatchingView:Z
    if-eqz v2, :cond_2

    .line 179
    const/4 v4, 0x1

    .line 184
    .end local v2           #foundMatchingView:Z
    :cond_1
    return v4

    .line 181
    .restart local v2       #foundMatchingView:Z
    :cond_2
    if-eqz p4, :cond_0

    .line 182
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v5, v4}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    goto :goto_0
.end method

.method public waitForView(Ljava/lang/Class;IZZ)Z
    .locals 4
    .parameter
    .parameter "index"
    .parameter "sleep"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;IZZ)Z"
        }
    .end annotation

    .prologue
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, uniqueViews:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {v3, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z

    move-result v0

    .line 147
    .local v0, foundMatchingView:Z
    if-eqz v0, :cond_3

    .line 148
    const/4 v2, 0x1

    .line 154
    :cond_2
    :goto_0
    return v2

    .line 150
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v3, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    :cond_4
    if-nez p4, :cond_0

    goto :goto_0
.end method

.method public varargs waitForViews([Ljava/lang/Class;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">([",
            "Ljava/lang/Class",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<+TT;>;"
    const/4 v6, 0x0

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v9

    int-to-long v9, v9

    add-long v2, v7, v9

    .line 200
    .local v2, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-gez v7, :cond_0

    .line 202
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Class;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 203
    .local v1, classToWaitFor:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, v6, v6, v6}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IZZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    const/4 v6, 0x1

    .line 210
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v1           #classToWaitFor:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return v6

    .line 202
    .restart local v0       #arr$:[Ljava/lang/Class;
    .restart local v1       #classToWaitFor:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    .end local v1           #classToWaitFor:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    :cond_2
    iget-object v7, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v7, v6}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    .line 208
    iget-object v7, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v7}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    goto :goto_0
.end method

.method public waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;
    .locals 9
    .parameter "by"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    const/4 v4, 0x0

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    int-to-long v7, p3

    add-long v0, v5, v7

    .line 324
    .local v0, endTime:J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .line 326
    .local v2, timedOut:Z
    :goto_1
    if-eqz v2, :cond_3

    .line 327
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x0

    .line 335
    :cond_1
    return-object v3

    .end local v2           #timedOut:Z
    :cond_2
    move v2, v4

    .line 324
    goto :goto_1

    .line 330
    .restart local v2       #timedOut:Z
    :cond_3
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 332
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Searcher;->searchForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v3

    .line 334
    .local v3, webElementToReturn:Lcom/jayway/android/robotium/solo/WebElement;
    if-nez v3, :cond_1

    .line 337
    if-eqz p4, :cond_0

    .line 338
    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Waiter;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v5, v4}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    goto :goto_0
.end method
