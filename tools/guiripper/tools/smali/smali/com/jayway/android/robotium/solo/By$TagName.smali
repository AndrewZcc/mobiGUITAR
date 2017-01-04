.class Lcom/jayway/android/robotium/solo/By$TagName;
.super Lcom/jayway/android/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagName"
.end annotation


# instance fields
.field private final tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tagName"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/By;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/By$TagName;->tagName:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/By$TagName;->tagName:Ljava/lang/String;

    return-object v0
.end method
