.class Lcom/ss/android/downloadlib/addownload/d$c;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/d;
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
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d$c;->a(Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .line 90
    const-string v0, "is_open_exp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/d$c;->a:I

    .line 91
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/d$c;->b(Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method

.method private b(ILcom/ss/android/socialbase/downloader/network/l;)I
    .registers 7

    .line 158
    nop

    .line 159
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    .line 160
    return p1

    .line 162
    :cond_b
    const/4 v0, 0x0

    .line 163
    sget-object v1, Lcom/ss/android/downloadlib/addownload/d$1;->a:[I

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/network/l;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_6c

    goto :goto_4f

    .line 177
    :pswitch_1b
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    .line 178
    goto :goto_4f

    .line 174
    :pswitch_26
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    .line 175
    goto :goto_4f

    .line 171
    :pswitch_31
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    .line 172
    goto :goto_4f

    .line 168
    :pswitch_3b
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    .line 169
    goto :goto_4f

    .line 165
    :pswitch_45
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    .line 166
    nop

    .line 182
    :goto_4f
    if-eqz v0, :cond_6a

    array-length p2, v0

    if-ge p2, v1, :cond_55

    goto :goto_6a

    .line 185
    :cond_55
    aget p2, v0, v2

    packed-switch p2, :pswitch_data_7a

    goto :goto_66

    .line 193
    :pswitch_5b
    aget p1, v0, v3

    goto :goto_66

    .line 190
    :pswitch_5e
    aget p2, v0, v3

    sub-int/2addr p1, p2

    .line 191
    goto :goto_66

    .line 187
    :pswitch_62
    aget p2, v0, v3

    add-int/2addr p1, p2

    .line 188
    nop

    .line 196
    :goto_66
    if-le p1, v3, :cond_69

    move v3, p1

    :cond_69
    return v3

    .line 183
    :cond_6a
    :goto_6a
    return p1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3b
        :pswitch_31
        :pswitch_26
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 10

    .line 95
    const-string v0, ","

    if-eqz p1, :cond_7a

    const-string v1, "download_chunk_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_7a

    .line 111
    :cond_e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 113
    return-void

    .line 115
    :cond_1d
    const/4 v1, 0x0

    .line 117
    :try_start_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_25

    .line 120
    move-object v1, v2

    goto :goto_29

    .line 118
    :catch_25
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_29
    if-nez v1, :cond_2c

    .line 122
    return-void

    .line 125
    :cond_2c
    const-string p1, "network_quality_operation"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const-string v2, "network_quality_operand"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_79

    .line 131
    :cond_45
    :try_start_45
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_76

    array-length v1, v0

    if-ge v1, v2, :cond_55

    goto :goto_76

    .line 136
    :cond_55
    const/4 v1, 0x0

    move v3, v1

    :goto_57
    if-ge v3, v2, :cond_75

    .line 137
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 138
    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 139
    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/d$c;->b:Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v1

    const/4 v4, 0x1

    aput v5, v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_77

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 142
    :cond_75
    goto :goto_78

    .line 134
    :cond_76
    :goto_76
    return-void

    .line 141
    :catchall_77
    move-exception p1

    .line 143
    :goto_78
    return-void

    .line 128
    :cond_79
    :goto_79
    return-void

    .line 96
    :cond_7a
    :goto_7a
    return-void
.end method


# virtual methods
.method public a(ILcom/ss/android/socialbase/downloader/network/l;)I
    .registers 4

    .line 147
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/d$c;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d$c;->b(ILcom/ss/android/socialbase/downloader/network/l;)I

    move-result p1

    return p1

    .line 150
    :cond_b
    return p1
.end method

.method a()Z
    .registers 3

    .line 154
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/d$c;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
