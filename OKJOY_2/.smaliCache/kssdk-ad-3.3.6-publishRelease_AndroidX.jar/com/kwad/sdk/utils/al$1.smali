.class final Lcom/kwad/sdk/utils/al$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/al;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/utils/al$1;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/kwad/sdk/utils/al$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwad/sdk/utils/al$1;->c:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/utils/al$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kwad/sdk/utils/al$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/utils/al$1;->c:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
