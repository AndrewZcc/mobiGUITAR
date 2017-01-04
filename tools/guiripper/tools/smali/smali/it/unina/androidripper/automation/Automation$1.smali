.class Lit/unina/androidripper/automation/Automation$1;
.super Ljava/lang/Object;
.source "Automation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/Automation;->fireSensorEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/unina/androidripper/automation/Automation;

.field final synthetic val$eventToPost:Lit/unina/android/hardware/mock/MockSensorEvent;


# direct methods
.method constructor <init>(Lit/unina/androidripper/automation/Automation;Lit/unina/android/hardware/mock/MockSensorEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation$1;->this$0:Lit/unina/androidripper/automation/Automation;

    iput-object p2, p0, Lit/unina/androidripper/automation/Automation$1;->val$eventToPost:Lit/unina/android/hardware/mock/MockSensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lit/unina/android/hardware/mock/MockSensorManager;->getInstance()Lit/unina/android/hardware/mock/MockSensorManager;

    move-result-object v0

    iget-object v1, p0, Lit/unina/androidripper/automation/Automation$1;->val$eventToPost:Lit/unina/android/hardware/mock/MockSensorEvent;

    invoke-virtual {v0, v1}, Lit/unina/android/hardware/mock/MockSensorManager;->riseSensorEvent(Lit/unina/android/hardware/mock/MockSensorEvent;)V

    .line 333
    return-void
.end method
