.class final Lit/unina/androidripper/automation/RobotUtilities$2;
.super Ljava/lang/Object;
.source "RobotUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/RobotUtilities;->home()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lit/unina/androidripper/automation/RobotUtilities$2;->val$viewList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lit/unina/androidripper/automation/RobotUtilities$2;->val$viewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 244
    return-void
.end method
