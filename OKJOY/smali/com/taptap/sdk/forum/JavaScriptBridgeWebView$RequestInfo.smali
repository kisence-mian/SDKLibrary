.class Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInfo"
.end annotation


# instance fields
.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p3, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;->this$0:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;->url:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;->headers:Ljava/util/Map;

    .line 119
    return-void
.end method
