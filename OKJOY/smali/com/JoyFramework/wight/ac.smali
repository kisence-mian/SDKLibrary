.class Lcom/JoyFramework/wight/ac;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/ab;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/ab;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/JoyFramework/wight/ac;->a:Lcom/JoyFramework/wight/ab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 89
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 90
    :cond_10
    const/4 v0, 0x0

    .line 93
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
