.class Lcom/jayway/android/robotium/solo/Solo$1;
.super Ljava/lang/Object;
.source "Solo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Solo;->getWebUrl()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Solo;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Solo;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Solo$1;->this$0:Lcom/jayway/android/robotium/solo/Solo;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Solo$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo$1;->this$0:Lcom/jayway/android/robotium/solo/Solo;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jayway/android/robotium/solo/Solo;->webUrl:Ljava/lang/String;

    .line 2020
    return-void
.end method
