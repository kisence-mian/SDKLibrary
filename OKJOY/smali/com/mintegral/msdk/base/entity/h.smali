.class public final Lcom/mintegral/msdk/base/entity/h;
.super Ljava/lang/Object;
.source "InstallApp.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/mintegral/msdk/base/entity/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_5e

    :try_start_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 56
    const-string v1, "[{$native_info}]"

    .line 57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/h;

    .line 59
    const-string v4, "{\"campaignId\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    iget-object v6, v0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"packageName\":"

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "},"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :catch_5d
    move-exception v0

    .line 71
    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    return-object v0

    .line 64
    :cond_60
    const-string v0, "{$native_info}"

    const/4 v3, 0x0

    const-string v4, ","

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_70} :catch_5d

    move-result-object v0

    goto :goto_5f
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_5

    .line 117
    :cond_4
    :goto_4
    return v0

    .line 102
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 103
    goto :goto_4

    .line 104
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 105
    goto :goto_4

    .line 106
    :cond_15
    check-cast p1, Lcom/mintegral/msdk/base/entity/h;

    .line 107
    iget-object v2, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 108
    iget-object v2, p1, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 109
    goto :goto_4

    .line 110
    :cond_21
    iget-object v2, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 111
    goto :goto_4

    .line 112
    :cond_2d
    iget-object v2, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 113
    iget-object v2, p1, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 114
    goto :goto_4

    .line 115
    :cond_37
    iget-object v2, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 116
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    .line 92
    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 94
    :goto_e
    add-int/2addr v0, v1

    .line 95
    return v0

    .line 91
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/h;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 93
    :cond_17
    iget-object v1, p0, Lcom/mintegral/msdk/base/entity/h;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method
