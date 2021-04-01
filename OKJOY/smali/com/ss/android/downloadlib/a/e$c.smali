.class Lcom/ss/android/downloadlib/a/e$c;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/e$c;->a(Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 90
    const-string v0, "is_open_exp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/e$c;->a:I

    .line 91
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/e$c;->b(Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method

.method private b(ILcom/ss/android/socialbase/downloader/i/h;)I
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 153
    .line 154
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_d

    .line 191
    :cond_c
    :goto_c
    return p1

    .line 157
    :cond_d
    const/4 v0, 0x0

    .line 158
    sget-object v2, Lcom/ss/android/downloadlib/a/e$1;->a:[I

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/i/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_66

    .line 177
    :goto_19
    if-eqz v0, :cond_c

    array-length v2, v0

    if-lt v2, v5, :cond_c

    .line 180
    aget v2, v0, v4

    packed-switch v2, :pswitch_data_74

    move v0, p1

    .line 191
    :goto_24
    if-le v0, v1, :cond_63

    :goto_26
    move p1, v0

    goto :goto_c

    .line 160
    :pswitch_28
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_19

    .line 163
    :pswitch_31
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_19

    .line 166
    :pswitch_3a
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_19

    .line 169
    :pswitch_43
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_19

    .line 172
    :pswitch_4d
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_19

    .line 182
    :pswitch_57
    aget v0, v0, v1

    add-int/2addr v0, p1

    .line 183
    goto :goto_24

    .line 185
    :pswitch_5b
    aget v0, v0, v1

    sub-int v0, p1, v0

    .line 186
    goto :goto_24

    .line 188
    :pswitch_60
    aget v0, v0, v1

    goto :goto_24

    :cond_63
    move v0, v1

    .line 191
    goto :goto_26

    .line 158
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4d
    .end packed-switch

    .line 180
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5b
        :pswitch_60
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x5

    .line 95
    if-eqz p1, :cond_c

    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 138
    :cond_c
    return-void

    .line 111
    :cond_d
    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 115
    const/4 v2, 0x0

    .line 117
    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_6e

    .line 121
    :goto_23
    if-eqz v0, :cond_c

    .line 125
    const-string v2, "network_quality_operation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v3, "network_quality_operand"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 130
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    array-length v0, v2

    if-lt v0, v8, :cond_c

    array-length v0, v3

    if-lt v0, v8, :cond_c

    move v0, v1

    .line 135
    :goto_50
    if-ge v0, v8, :cond_c

    .line 136
    iget-object v4, p0, Lcom/ss/android/downloadlib/a/e$c;->b:Ljava/util/ArrayList;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aget-object v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    const/4 v6, 0x1

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 118
    :catch_6e
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_23
.end method


# virtual methods
.method public a(ILcom/ss/android/socialbase/downloader/i/h;)I
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/e$c;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a/e$c;->b(ILcom/ss/android/socialbase/downloader/i/h;)I

    move-result p1

    .line 145
    :cond_a
    return p1
.end method

.method a()Z
    .registers 3

    .prologue
    .line 149
    iget v0, p0, Lcom/ss/android/downloadlib/a/e$c;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/ss/android/downloadlib/a/e$c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
