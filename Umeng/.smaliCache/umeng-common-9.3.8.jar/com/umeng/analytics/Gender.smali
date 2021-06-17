.class public enum Lcom/umeng/analytics/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Female:Lcom/umeng/analytics/Gender;

.field public static final enum Male:Lcom/umeng/analytics/Gender;

.field public static final enum Unknown:Lcom/umeng/analytics/Gender;

.field private static final synthetic a:[Lcom/umeng/analytics/Gender;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 14
    new-instance v0, Lcom/umeng/analytics/Gender$1;

    const-string v1, "Male"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/Gender$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    .line 21
    new-instance v1, Lcom/umeng/analytics/Gender$2;

    const-string v4, "Female"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/umeng/analytics/Gender$2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    .line 28
    new-instance v4, Lcom/umeng/analytics/Gender$3;

    const-string v6, "Unknown"

    invoke-direct {v4, v6, v5, v2}, Lcom/umeng/analytics/Gender$3;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    .line 12
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/umeng/analytics/Gender;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/umeng/analytics/Gender;->value:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/umeng/analytics/Gender$1;)V
    .registers 5

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/Gender;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getGender(I)Lcom/umeng/analytics/Gender;
    .registers 1

    .line 46
    nop

    .line 47
    packed-switch p0, :pswitch_data_e

    .line 56
    sget-object p0, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    goto :goto_d

    .line 52
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    .line 53
    goto :goto_d

    .line 49
    :pswitch_a
    sget-object p0, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    .line 50
    nop

    .line 59
    :goto_d
    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static transGender(Lcom/umeng/analytics/Gender;)Lcom/umeng/commonsdk/statistics/proto/Gender;
    .registers 2

    .line 63
    sget-object v0, Lcom/umeng/analytics/Gender$4;->a:[I

    invoke-virtual {p0}, Lcom/umeng/analytics/Gender;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_14

    .line 70
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->UNKNOWN:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    .line 67
    :pswitch_e
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->FEMALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    .line 65
    :pswitch_11
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->MALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/Gender;
    .registers 2

    .line 12
    const-class v0, Lcom/umeng/analytics/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/Gender;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/Gender;
    .registers 1

    .line 12
    sget-object v0, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    invoke-virtual {v0}, [Lcom/umeng/analytics/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/Gender;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/umeng/analytics/Gender;->value:I

    return v0
.end method
