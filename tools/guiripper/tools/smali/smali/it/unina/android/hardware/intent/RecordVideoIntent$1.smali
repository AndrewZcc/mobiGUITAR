.class Lit/unina/android/hardware/intent/RecordVideoIntent$1;
.super Landroid/content/BroadcastReceiver;
.source "RecordVideoIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/android/hardware/intent/RecordVideoIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/unina/android/hardware/intent/RecordVideoIntent;


# direct methods
.method constructor <init>(Lit/unina/android/hardware/intent/RecordVideoIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lit/unina/android/hardware/intent/RecordVideoIntent$1;->this$0:Lit/unina/android/hardware/intent/RecordVideoIntent;

    .line 161
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lit/unina/android/hardware/intent/RecordVideoIntent$1;->this$0:Lit/unina/android/hardware/intent/RecordVideoIntent;

    #calls: Lit/unina/android/hardware/intent/RecordVideoIntent;->returnIntent()V
    invoke-static {v0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->access$0(Lit/unina/android/hardware/intent/RecordVideoIntent;)V

    .line 166
    :cond_0
    return-void
.end method
