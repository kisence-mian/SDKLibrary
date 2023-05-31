.class public final enum Lcom/sigmob/wire/WireField$Label;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/wire/WireField$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/wire/WireField$Label;

.field public static final enum ONE_OF:Lcom/sigmob/wire/WireField$Label;

.field public static final enum OPTIONAL:Lcom/sigmob/wire/WireField$Label;

.field public static final enum PACKED:Lcom/sigmob/wire/WireField$Label;

.field public static final enum REPEATED:Lcom/sigmob/wire/WireField$Label;

.field public static final enum REQUIRED:Lcom/sigmob/wire/WireField$Label;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "OPTIONAL"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->OPTIONAL:Lcom/sigmob/wire/WireField$Label;

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "REPEATED"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "ONE_OF"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->ONE_OF:Lcom/sigmob/wire/WireField$Label;

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "PACKED"

    invoke-direct {v0, v1, v6}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sigmob/wire/WireField$Label;

    sget-object v1, Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/wire/WireField$Label;->OPTIONAL:Lcom/sigmob/wire/WireField$Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/wire/WireField$Label;->ONE_OF:Lcom/sigmob/wire/WireField$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->$VALUES:[Lcom/sigmob/wire/WireField$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/wire/WireField$Label;
    .registers 2

    const-class v0, Lcom/sigmob/wire/WireField$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/WireField$Label;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/wire/WireField$Label;
    .registers 1

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->$VALUES:[Lcom/sigmob/wire/WireField$Label;

    invoke-virtual {v0}, [Lcom/sigmob/wire/WireField$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/wire/WireField$Label;

    return-object v0
.end method


# virtual methods
.method isOneOf()Z
    .registers 2

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->ONE_OF:Lcom/sigmob/wire/WireField$Label;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isPacked()Z
    .registers 2

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isRepeated()Z
    .registers 2

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
