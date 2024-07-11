.class final Lcom/tapjoy/TJSplitWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJSplitWebView;->setupToolbarUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView$4;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$4;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->a()V

    .line 204
    return-void
.end method
