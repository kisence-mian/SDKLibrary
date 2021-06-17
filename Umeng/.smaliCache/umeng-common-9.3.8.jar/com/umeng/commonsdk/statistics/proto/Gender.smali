.class public final enum Lcom/umeng/commonsdk/statistics/proto/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"

# interfaces
.implements Lcom/umeng/analytics/pro/au;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/Gender;",
        ">;",
        "Lcom/umeng/analytics/pro/au;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/commonsdk/statistics/proto/Gender;

.field public static final enum FEMALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

.field public static final enum MALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

.field public static final enum UNKNOWN:Lcom/umeng/commonsdk/statistics/proto/Gender;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 12
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/commonsdk/statistics/proto/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Gender;->MALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    .line 13
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/Gender;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/umeng/commonsdk/statistics/proto/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/proto/Gender;->FEMALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    .line 14
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/Gender;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/umeng/commonsdk/statistics/proto/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/proto/Gender;->UNKNOWN:Lcom/umeng/commonsdk/statistics/proto/Gender;

    .line 11
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/umeng/commonsdk/statistics/proto/Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/umeng/commonsdk/statistics/proto/Gender;->$VALUES:[Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->value:I

    .line 20
    return-void
.end method

.method public static findByValue(I)Lcom/umeng/commonsdk/statistics/proto/Gender;
    .registers 1

    .line 34
    packed-switch p0, :pswitch_data_e

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 40
    :pswitch_5
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->UNKNOWN:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    .line 38
    :pswitch_8
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->FEMALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    .line 36
    :pswitch_b
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->MALE:Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/Gender;
    .registers 2

    .line 11
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/Gender;
    .registers 1

    .line 11
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Gender;->$VALUES:[Lcom/umeng/commonsdk/statistics/proto/Gender;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/Gender;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/Gender;->value:I

    return v0
.end method
