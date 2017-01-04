.class Lcom/jayway/android/robotium/solo/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# instance fields
.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;


# direct methods
.method constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 0
    .parameter "inst"
    .parameter "sleeper"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    .line 30
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Sender;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 31
    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Sender;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 57
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Sender;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendKeyCode(I)V
    .locals 3
    .parameter "keycode"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Sender;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "Can not complete action!"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method
