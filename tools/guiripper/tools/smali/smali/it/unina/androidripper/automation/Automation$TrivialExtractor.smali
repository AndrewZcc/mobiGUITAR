.class public Lit/unina/androidripper/automation/Automation$TrivialExtractor;
.super Ljava/lang/Object;
.source "Automation.java"

# interfaces
.implements Lit/unina/androidripper/model/Extractor;
.implements Lit/unina/androidripper/model/ImageCaptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/androidripper/automation/Automation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrivialExtractor"
.end annotation


# instance fields
.field final synthetic this$0:Lit/unina/androidripper/automation/Automation;


# direct methods
.method public constructor <init>(Lit/unina/androidripper/automation/Automation;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureImage()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 782
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    #getter for: Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;
    invoke-static {v4}, Lit/unina/androidripper/automation/Automation;->access$000(Lit/unina/androidripper/automation/Automation;)Lcom/jayway/android/robotium/solo/Solo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Solo;->getViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 783
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 785
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 786
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 787
    .local v1, flag:Z
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;

    invoke-direct {v5, p0, v1, v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor$2;-><init>(Lit/unina/androidripper/automation/Automation$TrivialExtractor;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 796
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;

    invoke-direct {v5, p0, v1, v2}, Lit/unina/androidripper/automation/Automation$TrivialExtractor$3;-><init>(Lit/unina/androidripper/automation/Automation$TrivialExtractor;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 807
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #flag:Z
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeActivity()Lit/unina/androidripper/model/ActivityDescription;
    .locals 1

    .prologue
    .line 634
    new-instance v0, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;

    invoke-direct {v0, p0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor$1;-><init>(Lit/unina/androidripper/automation/Automation$TrivialExtractor;)V

    return-object v0
.end method

.method public extractState()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation;->retrieveWidgets()V

    .line 623
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 630
    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getWidget(I)Landroid/view/View;
    .locals 1
    .parameter "key"

    .prologue
    .line 626
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;->this$0:Lit/unina/androidripper/automation/Automation;

    invoke-virtual {v0}, Lit/unina/androidripper/automation/Automation;->getWidgets()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
