.class final Lit/unina/androidripper/automation/RobotUtilities$1;
.super Ljava/lang/Object;
.source "RobotUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$n:I

.field final synthetic val$theList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lit/unina/androidripper/automation/RobotUtilities$1;->val$theList:Landroid/widget/ListView;

    iput p2, p0, Lit/unina/androidripper/automation/RobotUtilities$1;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lit/unina/androidripper/automation/RobotUtilities$1;->val$theList:Landroid/widget/ListView;

    iget v1, p0, Lit/unina/androidripper/automation/RobotUtilities$1;->val$n:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 99
    return-void
.end method
