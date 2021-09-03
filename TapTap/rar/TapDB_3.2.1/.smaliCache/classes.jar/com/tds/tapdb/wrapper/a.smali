.class final Lcom/tds/tapdb/wrapper/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "alipay"

.field private static final b:Ljava/lang/String; = "zhifubao"

.field private static final c:Ljava/lang/String; = "taptap"

.field private static final d:Ljava/lang/String; = "weixin"

.field private static final e:Ljava/lang/String; = "qq"

.field private static final f:Ljava/lang/String; = "tourist"

.field private static final g:Ljava/lang/String; = "apple"

.field private static final h:Ljava/lang/String; = "facebook"

.field private static final i:Ljava/lang/String; = "google"

.field private static final j:Ljava/lang/String; = "twitter"

.field private static final k:Ljava/lang/String; = "phonenumber"

.field private static final l:Ljava/lang/String; = "email"

.field private static final m:Ljava/lang/String; = "custom"

.field private static final n:Ljava/lang/String; = "none"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/tds/tapdb/sdk/LoginType;
    .registers 3

    if-nez p0, :cond_5

    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->NONE:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    goto/16 :goto_90

    :sswitch_13
    const-string v1, "facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x7

    goto/16 :goto_90

    :sswitch_1e
    const-string v1, "email"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/16 v0, 0xb

    goto/16 :goto_90

    :sswitch_2a
    const-string v1, "apple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x6

    goto :goto_90

    :sswitch_34
    const-string v1, "qq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x4

    goto :goto_90

    :sswitch_3e
    const-string v1, "phonenumber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/16 v0, 0xa

    goto :goto_90

    :sswitch_49
    const-string v1, "weixin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x3

    goto :goto_90

    :sswitch_53
    const-string v1, "taptap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x2

    goto :goto_90

    :sswitch_5d
    const-string v1, "twitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/16 v0, 0x9

    goto :goto_90

    :sswitch_68
    const-string v1, "tourist"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x5

    goto :goto_90

    :sswitch_72
    const-string v1, "zhifubao"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x1

    goto :goto_90

    :sswitch_7c
    const-string v1, "google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/16 v0, 0x8

    goto :goto_90

    :sswitch_87
    const-string v1, "alipay"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    const/4 v0, 0x0

    :cond_90
    :goto_90
    packed-switch v0, :pswitch_data_ea

    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Custom:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_96
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Email:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_99
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->PhoneNumber:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_9c
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Twitter:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_9f
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Google:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_a2
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Facebook:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_a5
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Apple:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_a8
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Tourist:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_ab
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->QQ:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_ae
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->WeiXin:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_b1
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->TapTap:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    :pswitch_b4
    sget-object p0, Lcom/tds/tapdb/sdk/LoginType;->Alipay:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x545695b6 -> :sswitch_87
        -0x49eca1c7 -> :sswitch_7c
        -0x4827a93a -> :sswitch_72
        -0x439d10ce -> :sswitch_68
        -0x369e558d -> :sswitch_5d
        -0x348246e0 -> :sswitch_53
        -0x2f2e7d9e -> :sswitch_49
        -0x108031c9 -> :sswitch_3e
        0xe20 -> :sswitch_34
        0x58b835a -> :sswitch_2a
        0x5c24b9c -> :sswitch_1e
        0x1da19ac6 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
    .end packed-switch
.end method
