.class public final Lcom/kwad/sdk/core/report/ReportAction$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/report/ReportAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/report/ReportAction$a;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/report/ReportAction$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/ReportAction$a;-><init>()V

    sget v1, Lcom/kwad/sdk/core/report/ReportAction$b;->a:I

    iput v1, v0, Lcom/kwad/sdk/core/report/ReportAction$a;->a:I

    sget v1, Lcom/kwad/sdk/core/report/ReportAction$b;->b:I

    iput v1, v0, Lcom/kwad/sdk/core/report/ReportAction$a;->b:I

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    const-string v0, "posIdWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/report/ReportAction$a;->a:I

    const-string v0, "posIdHeight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/report/ReportAction$a;->b:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction$a;->a:I

    const-string v2, "posIdWidth"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/report/ReportAction$a;->b:I

    const-string v2, "posIdHeight"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
