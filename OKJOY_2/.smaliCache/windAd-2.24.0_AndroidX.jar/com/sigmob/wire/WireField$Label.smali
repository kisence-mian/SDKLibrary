.class public final enum Lcom/sigmob/wire/WireField$Label;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/WireField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 11

    new-instance v0, Lcom/sigmob/wire/WireField$Label;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;

    new-instance v1, Lcom/sigmob/wire/WireField$Label;

    const-string v3, "OPTIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/wire/WireField$Label;->OPTIONAL:Lcom/sigmob/wire/WireField$Label;

    new-instance v3, Lcom/sigmob/wire/WireField$Label;

    const-string v5, "REPEATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;

    new-instance v5, Lcom/sigmob/wire/WireField$Label;

    const-string v7, "ONE_OF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/wire/WireField$Label;->ONE_OF:Lcom/sigmob/wire/WireField$Label;

    new-instance v7, Lcom/sigmob/wire/WireField$Label;

    const-string v9, "PACKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sigmob/wire/WireField$Label;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sigmob/wire/WireField$Label;->$VALUES:[Lcom/sigmob/wire/WireField$Label;

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

    move-result-object p0

    check-cast p0, Lcom/sigmob/wire/WireField$Label;

    return-object p0
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

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPacked()Z
    .registers 2

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isRepeated()Z
    .registers 2

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/sigmob/wire/WireField$Label;->PACKED:Lcom/sigmob/wire/WireField$Label;

    if-ne p0, v0, :cond_9

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
