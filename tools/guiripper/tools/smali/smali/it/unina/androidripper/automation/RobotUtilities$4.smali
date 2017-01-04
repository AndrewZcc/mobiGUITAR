.class final Lit/unina/androidripper/automation/RobotUtilities$4;
.super Ljava/lang/Object;
.source "RobotUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/automation/RobotUtilities;->requestFocus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lit/unina/androidripper/automation/RobotUtilities$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lit/unina/androidripper/automation/RobotUtilities$4;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 274
    return-void
.end method
