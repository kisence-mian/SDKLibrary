.class public final enum Lcom/bytedance/sdk/a/b/ad;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/a/b/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum b:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum c:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum d:Lcom/bytedance/sdk/a/b/ad;

.field public static final enum e:Lcom/bytedance/sdk/a/b/ad;

.field private static final synthetic g:[Lcom/bytedance/sdk/a/b/ad;


# instance fields
.field final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 27
    new-instance v0, Lcom/bytedance/sdk/a/b/ad;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    .line 28
    new-instance v1, Lcom/bytedance/sdk/a/b/ad;

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    const-string v5, "TLSv1.2"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    .line 29
    new-instance v3, Lcom/bytedance/sdk/a/b/ad;

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    const-string v7, "TLSv1.1"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    .line 30
    new-instance v5, Lcom/bytedance/sdk/a/b/ad;

    const-string v7, "TLS_1_0"

    const/4 v8, 0x3

    const-string v9, "TLSv1"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    .line 31
    new-instance v7, Lcom/bytedance/sdk/a/b/ad;

    const-string v9, "SSL_3_0"

    const/4 v10, 0x4

    const-string v11, "SSLv3"

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/sdk/a/b/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/bytedance/sdk/a/b/ad;->e:Lcom/bytedance/sdk/a/b/ad;

    .line 26
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bytedance/sdk/a/b/ad;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/bytedance/sdk/a/b/ad;->g:[Lcom/bytedance/sdk/a/b/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/ad;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;
    .registers 4

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_12
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_3b

    :sswitch_1c
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_26
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_30
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_7c

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_57
    sget-object p0, Lcom/bytedance/sdk/a/b/ad;->e:Lcom/bytedance/sdk/a/b/ad;

    return-object p0

    .line 49
    :pswitch_5a
    sget-object p0, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    return-object p0

    .line 47
    :pswitch_5d
    sget-object p0, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    return-object p0

    .line 45
    :pswitch_60
    sget-object p0, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    return-object p0

    .line 43
    :pswitch_63
    sget-object p0, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    return-object p0

    :sswitch_data_66
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_30
        -0x1dfc3f26 -> :sswitch_26
        -0x1dfc3f25 -> :sswitch_1c
        0x4b88569 -> :sswitch_12
        0x4c38896 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/ad;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 59
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/ad;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 61
    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;
    .registers 2

    .line 26
    const-class v0, Lcom/bytedance/sdk/a/b/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/a/b/ad;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/a/b/ad;
    .registers 1

    .line 26
    sget-object v0, Lcom/bytedance/sdk/a/b/ad;->g:[Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/a/b/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/ad;

    return-object v0
.end method
