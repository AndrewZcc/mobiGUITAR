.class Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;
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
    .line 787
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->this$1:Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    iput-boolean p2, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->val$flag:Z

    iput-object p3, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 789
    iget-boolean v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->val$flag:Z

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 792
    :cond_0
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 793
    return-void
.end method
