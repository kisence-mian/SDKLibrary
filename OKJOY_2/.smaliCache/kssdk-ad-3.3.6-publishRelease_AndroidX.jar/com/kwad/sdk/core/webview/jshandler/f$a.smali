.class public final Lcom/kwad/sdk/core/webview/jshandler/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/webview/jshandler/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/f$a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/webview/jshandler/f$a;->a:I

    return p1
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/webview/jshandler/f$a;->a:I

    const-string v2, "screenOrientation"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
