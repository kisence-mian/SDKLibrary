.class public abstract Lmobi/oneway/export/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lmobi/oneway/export/g/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmobi/oneway/export/g/f$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Throwable;Lmobi/oneway/export/g/b;)V
    .registers 5

    const/4 v0, -0x1

    const-string v1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v0, v1}, Lmobi/oneway/export/g/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/g/b;)V
    .registers 7

    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p1}, Lmobi/oneway/export/g/b;->e()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "message"

    const-string v3, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_20

    invoke-virtual {p0, v0}, Lmobi/oneway/export/g/a;->a(Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0, v1, v2}, Lmobi/oneway/export/g/a;->a(ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_24

    goto :goto_1f

    :catch_24
    move-exception v0

    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p0, v4, v0}, Lmobi/oneway/export/g/a;->a(ILjava/lang/String;)V

    goto :goto_1f
.end method
