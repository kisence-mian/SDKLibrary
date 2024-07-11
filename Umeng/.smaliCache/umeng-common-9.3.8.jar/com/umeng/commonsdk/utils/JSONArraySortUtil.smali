.class public Lcom/umeng/commonsdk/utils/JSONArraySortUtil;
.super Ljava/lang/Object;
.source "JSONArraySortUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompareKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 8
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .registers 5

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->mCompareKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 25
    iget-object p1, p0, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->mCompareKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_f

    .line 26
    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 27
    :catch_f
    move-exception p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    const/4 p1, 0x0

    return p1
.end method

.method public setCompareKey(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->mCompareKey:Ljava/lang/String;

    .line 19
    return-void
.end method
