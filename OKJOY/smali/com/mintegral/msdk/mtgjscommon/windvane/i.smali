.class public abstract Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.super Ljava/lang/Object;
.source "WindVanePlugin.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 3

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->mWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 20
    return-void
.end method
