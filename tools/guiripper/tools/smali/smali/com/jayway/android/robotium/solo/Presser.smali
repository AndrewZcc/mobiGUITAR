.class Lcom/jayway/android/robotium/solo/Presser;
.super Ljava/lang/Object;
.source "Presser.java"


# instance fields
.field private final clicker:Lcom/jayway/android/robotium/solo/Clicker;

.field private final dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final waiter:Lcom/jayway/android/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/Clicker;Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;Lcom/jayway/android/robotium/solo/Waiter;Lcom/jayway/android/robotium/solo/DialogUtils;)V
    .locals 0
    .parameter "clicker"
    .parameter "inst"
    .parameter "sleeper"
    .parameter "waiter"
    .parameter "dialogUtils"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Presser;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    .line 38
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    .line 39
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 40
    iput-object p4, p0, Lcom/jayway/android/robotium/solo/Presser;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 41
    iput-object p5, p0, Lcom/jayway/android/robotium/solo/Presser;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    .line 42
    return-void
.end method


# virtual methods
.method public pressMenuItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Presser;->pressMenuItem(II)V

    .line 55
    return-void
.end method

.method public pressMenuItem(II)V
    .locals 10
    .parameter "index"
    .parameter "itemsPerRow"

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 67
    const/4 v3, 0x4

    new-array v2, v3, [I

    .line 68
    .local v2, row:[I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x3

    if-gt v1, v3, :cond_0

    .line 69
    mul-int v3, p2, v1

    aput v3, v2, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 74
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToOpen(J)Z

    .line 75
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 76
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    aget v3, v2, v6

    if-ge p1, v3, :cond_1

    .line 81
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_3

    .line 82
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 83
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v9}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "Can not press the menu!"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    aget v3, v2, v6

    if-lt p1, v3, :cond_2

    aget v3, v2, v7

    if-ge p1, v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v8}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 88
    aget v1, v2, v6

    :goto_3
    if-ge v1, p1, :cond_3

    .line 89
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 90
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v9}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 92
    :cond_2
    aget v3, v2, v7

    if-lt p1, v3, :cond_3

    .line 93
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v8}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 94
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v8}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 96
    aget v1, v2, v7

    :goto_4
    if-ge v1, p1, :cond_3

    .line 97
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 98
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v9}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 103
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_5
    return-void

    .line 104
    :catch_1
    move-exception v3

    goto :goto_5
.end method

.method public pressSpinnerItem(II)V
    .locals 5
    .parameter "spinnerIndex"
    .parameter "itemIndex"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Presser;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v4, Landroid/widget/Spinner;

    invoke-virtual {v3, p1, v4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 118
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToOpen(J)Z

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 124
    :goto_0
    const/4 v0, 0x1

    .line 125
    .local v0, countingUp:Z
    if-gez p2, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    mul-int/lit8 p2, p2, -0x1

    .line 129
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 132
    if-eqz v0, :cond_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 139
    :catch_0
    move-exception v2

    goto :goto_2

    .line 143
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 145
    :goto_3
    return-void

    .line 144
    :catch_1
    move-exception v2

    goto :goto_3

    .line 135
    :catch_2
    move-exception v2

    goto :goto_2

    .line 122
    .end local v0           #countingUp:Z
    .end local v1           #i:I
    :catch_3
    move-exception v2

    goto :goto_0
.end method
