.class public final Lcom/kwad/sdk/c/f/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/c/f/g$a;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/c/f/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/c/f/g$a;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/c/f/g$b;->a()I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/c/f/g$a;->a:I

    invoke-static {}, Lcom/kwad/sdk/c/f/g$b;->b()I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/c/f/g$a;->b:I

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string v0, "posIdWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g$a;->a:I

    const-string v0, "posIdHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/c/f/g$a;->b:I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_19

    goto :goto_2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/c/f/g$a;->a:I

    const-string v2, "posIdWidth"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/c/f/g$a;->b:I

    const-string v2, "posIdHeight"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
