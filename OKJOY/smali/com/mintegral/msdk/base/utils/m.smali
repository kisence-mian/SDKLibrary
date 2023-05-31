.class public final Lcom/mintegral/msdk/base/utils/m;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_18

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_19

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 29
    :cond_18
    const/4 v0, 0x0

    :cond_19
    return-object v0
.end method
