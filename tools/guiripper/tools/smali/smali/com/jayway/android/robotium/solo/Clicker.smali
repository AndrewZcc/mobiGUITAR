.class Lcom/jayway/android/robotium/solo/Clicker;
.super Ljava/lang/Object;
.source "Clicker.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MINISLEEP:I

.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

.field private final inst:Landroid/app/Instrumentation;

.field private final sender:Lcom/jayway/android/robotium/solo/Sender;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

.field private final waiter:Lcom/jayway/android/robotium/solo/Waiter;

.field private final webUtils:Lcom/jayway/android/robotium/solo/WebUtils;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sender;Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;Lcom/jayway/android/robotium/solo/Waiter;Lcom/jayway/android/robotium/solo/WebUtils;Lcom/jayway/android/robotium/solo/DialogUtils;)V
    .locals 1
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "sender"
    .parameter "inst"
    .parameter "sleeper"
    .parameter "waiter"
    .parameter "webUtils"
    .parameter "dialogUtils"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Robotium"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->MINISLEEP:I

    .line 58
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Clicker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 59
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 60
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Clicker;->sender:Lcom/jayway/android/robotium/solo/Sender;

    .line 61
    iput-object p4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    .line 62
    iput-object p5, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 63
    iput-object p6, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 64
    iput-object p7, p0, Lcom/jayway/android/robotium/solo/Clicker;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    .line 65
    iput-object p8, p0, Lcom/jayway/android/robotium/solo/Clicker;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    .line 66
    return-void
.end method


# virtual methods
.method public clickInList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(IIZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickInList(IIZI)Ljava/util/ArrayList;
    .locals 14
    .parameter "line"
    .parameter "index"
    .parameter "longClick"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v12

    int-to-long v12, v12

    add-long v3, v10, v12

    .line 427
    .local v3, endTime:J
    add-int/lit8 v5, p1, -0x1

    .line 428
    .local v5, lineIndex:I
    if-gez v5, :cond_0

    .line 429
    const/4 v5, 0x0

    .line 431
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v9, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v11, Landroid/widget/AbsListView;

    move/from16 v0, p2

    invoke-virtual {v10, v0, v11}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    .line 434
    .local v2, absListView:Landroid/widget/AbsListView;
    if-nez v2, :cond_1

    .line 435
    const-string v10, "ListView is null!"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 437
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    if-le v5, v10, :cond_4

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-lez v10, :cond_3

    const/4 v7, 0x1

    .line 439
    .local v7, timedOut:Z
    :goto_1
    if-eqz v7, :cond_2

    .line 440
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 441
    .local v6, numberOfLines:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not click on line number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as there are only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lines available"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 443
    .end local v6           #numberOfLines:I
    :cond_2
    iget-object v10, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v10}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    .line 438
    .end local v7           #timedOut:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 446
    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 448
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_5

    .line 449
    iget-object v10, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 450
    invoke-static {v9}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    .line 451
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v8, v0, v1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 453
    :cond_5
    const-class v10, Landroid/widget/TextView;

    invoke-static {v10, v9}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->filterViews(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v10

    return-object v10
.end method

.method public clickLongOnScreen(FFI)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 110
    const/4 v11, 0x0

    .line 111
    .local v11, successfull:Z
    const/4 v10, 0x0

    .line 112
    .local v10, retry:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 114
    .local v2, eventTime:J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 116
    .local v9, event:Landroid/view/MotionEvent;
    :goto_0
    if-nez v11, :cond_0

    const/16 v4, 0xa

    if-ge v10, v4, :cond_0

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v11, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v8

    .line 121
    .local v8, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 122
    add-int/lit8 v10, v10, 0x1

    .line 123
    goto :goto_0

    .line 125
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_0
    if-nez v11, :cond_1

    .line 126
    const-string v4, "Click can not be completed!"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 129
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 130
    const/4 v4, 0x2

    const/high16 v5, 0x3f80

    add-float/2addr v5, p1

    const/high16 v6, 0x3f80

    add-float/2addr v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 133
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 134
    if-lez p3, :cond_2

    .line 135
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v4, p3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 139
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 140
    const/4 v4, 0x1

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 141
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 142
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 144
    return-void

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4020

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    goto :goto_1
.end method

.method public clickLongOnTextAndPress(Ljava/lang/String;I)V
    .locals 9
    .parameter "text"
    .parameter "index"

    .prologue
    const/16 v8, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 195
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToOpen(J)Z

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 204
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v8}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 198
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 199
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "Can not press the context menu!"

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 206
    .end local v6           #e:Ljava/lang/SecurityException;
    .restart local v7       #i:I
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 207
    return-void
.end method

.method public clickOn(Ljava/lang/Class;I)V
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method public clickOn(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter "nameRegex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v12

    .line 379
    .local v12, viewToClick:Landroid/widget/TextView;,"TT;"
    if-eqz v12, :cond_0

    .line 380
    invoke-virtual {p0, v12}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    .line 384
    .local v9, allTextViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 385
    .local v11, view:Landroid/widget/TextView;,"TT;"
    const-string v0, "Robotium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found. Have found: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 387
    .end local v11           #view:Landroid/widget/TextView;,"TT;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with text: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public clickOnActionBarHomeButton()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 279
    iget-object v8, p0, Lcom/jayway/android/robotium/solo/Clicker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v8}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 280
    .local v1, activity:Landroid/app/Activity;
    const/4 v6, 0x0

    .line 283
    .local v6, homeMenuItem:Landroid/view/MenuItem;
    :try_start_0
    const-string v8, "com.android.internal.view.menu.ActionMenuItem"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 284
    .local v3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x6

    new-array v7, v8, [Ljava/lang/Class;

    .line 285
    .local v7, partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 286
    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 287
    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 288
    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 289
    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 290
    const/4 v8, 0x5

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    .line 291
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 292
    .local v4, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x6

    new-array v2, v8, [Ljava/lang/Object;

    .line 293
    .local v2, argList:[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object v1, v2, v8

    .line 294
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 295
    const/4 v8, 0x2

    const v9, 0x102002c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 296
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 297
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    .line 298
    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v2, v8

    .line 299
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/MenuItem;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2           #argList:[Ljava/lang/Object;
    .end local v3           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v7           #partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v6, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v8, v10, v6}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 307
    :cond_0
    return-void

    .line 300
    :catch_0
    move-exception v5

    .line 301
    .local v5, ex:Ljava/lang/Exception;
    const-string v8, "Robotium"

    const-string v9, "Can not find methods to invoke Home button!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clickOnActionBarItem(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Clicker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    .line 272
    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->sender:Lcom/jayway/android/robotium/solo/Sender;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Sender;->sendKeyCode(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 224
    return-void

    .line 220
    :catch_0
    move-exception v6

    .line 221
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "Can not open the menu!"

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public clickOnMenuItem(Ljava/lang/String;Z)V
    .locals 14
    .parameter "text"
    .parameter "subMenu"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 236
    const/4 v8, 0x0

    .line 237
    .local v8, textMore:Landroid/widget/TextView;
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 238
    .local v12, xy:[I
    const/4 v11, 0x0

    .line 239
    .local v11, x:I
    const/4 v13, 0x0

    .line 242
    .local v13, y:I
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->sender:Lcom/jayway/android/robotium/solo/Sender;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Sender;->sendKeyCode(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v2, 0x1

    const-wide/16 v3, 0x5dc

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 248
    .local v9, textShown:Z
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    if-nez v9, :cond_3

    .line 249
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 250
    .local v10, textView:Landroid/widget/TextView;
    const/4 v0, 0x0

    aget v11, v12, v0

    .line 251
    const/4 v0, 0x1

    aget v13, v12, v0

    .line 252
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 254
    const/4 v0, 0x0

    aget v0, v12, v0

    if-gt v0, v11, :cond_1

    const/4 v0, 0x1

    aget v0, v12, v0

    if-le v0, v13, :cond_0

    .line 255
    :cond_1
    move-object v8, v10

    goto :goto_2

    .line 243
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #textShown:Z
    .end local v10           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 244
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "Can not open the menu!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 246
    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 258
    .restart local v9       #textShown:Z
    :cond_3
    if-eqz v8, :cond_4

    .line 259
    invoke-virtual {p0, v8}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 261
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 262
    return-void
.end method

.method public clickOnScreen(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 76
    const/4 v12, 0x0

    .line 77
    .local v12, successfull:Z
    const/4 v11, 0x0

    .line 79
    .local v11, retry:I
    :goto_0
    if-nez v12, :cond_0

    const/16 v4, 0xa

    if-ge v11, v4, :cond_0

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, eventTime:J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 84
    .local v9, event:Landroid/view/MotionEvent;
    const/4 v4, 0x1

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 87
    .local v10, event2:Landroid/view/MotionEvent;
    :try_start_0
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 88
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 89
    const/4 v12, 0x1

    .line 90
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v8

    .line 92
    .local v8, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Clicker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 96
    .end local v0           #downTime:J
    .end local v2           #eventTime:J
    .end local v8           #e:Ljava/lang/SecurityException;
    .end local v9           #event:Landroid/view/MotionEvent;
    .end local v10           #event2:Landroid/view/MotionEvent;
    :cond_0
    if-nez v12, :cond_1

    .line 97
    const-string v4, "Click can not be completed!"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 99
    :cond_1
    return-void
.end method

.method public clickOnScreen(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0, v0}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 155
    return-void
.end method

.method public clickOnScreen(Landroid/view/View;ZI)V
    .locals 8
    .parameter "view"
    .parameter "longClick"
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    .line 166
    if-nez p1, :cond_0

    .line 167
    const-string v5, "View is null and can therefore not be clicked!"

    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 168
    :cond_0
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 170
    .local v3, xy:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 173
    .local v1, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 174
    .local v0, viewHeight:I
    aget v5, v3, v6

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v6, v7

    add-float v2, v5, v6

    .line 175
    .local v2, x:F
    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v6, v7

    add-float v4, v5, v6

    .line 177
    .local v4, y:F
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p0, v2, v4, p3}, Lcom/jayway/android/robotium/solo/Clicker;->clickLongOnScreen(FFI)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(FF)V

    goto :goto_0
.end method

.method public clickOnText(Ljava/lang/String;ZIZI)V
    .locals 13
    .parameter "regex"
    .parameter "longClick"
    .parameter "match"
    .parameter "scroll"
    .parameter "time"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v4, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v8}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v11

    .line 345
    .local v11, textToClick:Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 346
    move/from16 v0, p5

    invoke-virtual {p0, v11, p2, v0}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 366
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p3

    if-le v0, v1, :cond_1

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matches of text string: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Clicker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    .line 357
    .local v9, allTextViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Clicker;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/WebUtils;->getTextViewsFromWebView()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 360
    .local v12, textView:Landroid/widget/TextView;
    const-string v1, "Robotium"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found. Have found: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_2
    const/4 v9, 0x0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text string: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public clickOnWebElement(Lcom/jayway/android/robotium/solo/By;IZ)V
    .locals 5
    .parameter "by"
    .parameter "match"
    .parameter "scroll"

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Clicker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v0

    .line 320
    .local v0, webElementToClick:Lcom/jayway/android/robotium/solo/WebElement;
    if-nez v0, :cond_0

    .line 321
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WebElements with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Clicker;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 328
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(FF)V

    .line 329
    return-void

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebElement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Clicker;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method
