.class public Lit/unina/androidripper/automation/BasicRestarter;
.super Ljava/lang/Object;
.source "BasicRestarter.java"

# interfaces
.implements Lit/unina/androidripper/model/Restarter;


# instance fields
.field private main:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restart()V
    .locals 3

    .prologue
    .line 15
    iget-object v1, p0, Lit/unina/androidripper/automation/BasicRestarter;->main:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/automation/BasicRestarter;->main:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lit/unina/androidripper/automation/BasicRestarter;->main:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method public setRestartPoint(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 22
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/unina/androidripper/automation/BasicRestarter;->main:Landroid/content/ContextWrapper;

    .line 23
    return-void
.end method
