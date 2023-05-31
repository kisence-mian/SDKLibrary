.class Lcom/JoyFramework/wight/aa;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/z;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/z;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/JoyFramework/wight/aa;->a:Lcom/JoyFramework/wight/z;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
