.class Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;
.super Ljava/lang/Object;
.source "Automation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/Automation$TrivialExtractor;->captureImage()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

.field final synthetic val$flag:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lit/unina/androidripper/automation/Automation$TrivialExtractor;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iput-boolean p2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;->val$flag:Z

    iput-object p3, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;->val$flag:Z

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 803
    :cond_0
    return-void
.end method
