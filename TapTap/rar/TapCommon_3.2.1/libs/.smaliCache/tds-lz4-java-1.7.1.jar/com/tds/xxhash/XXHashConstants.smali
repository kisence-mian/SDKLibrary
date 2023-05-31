.class final enum Lcom/tds/xxhash/XXHashConstants;
.super Ljava/lang/Enum;
.source "XXHashConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/xxhash/XXHashConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/xxhash/XXHashConstants;

.field static final PRIME1:I = -0x61c8864f

.field static final PRIME2:I = -0x7a143589

.field static final PRIME3:I = -0x3d4d51c3

.field static final PRIME4:I = 0x27d4eb2f

.field static final PRIME5:I = 0x165667b1

.field static final PRIME64_1:J = -0x61c8864e7a143579L

.field static final PRIME64_2:J = -0x3d4d51c2d82b14b1L

.field static final PRIME64_3:J = 0x165667b19e3779f9L

.field static final PRIME64_4:J = -0x7a1435883d4d519dL

.field static final PRIME64_5:J = 0x27d4eb2f165667c5L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/xxhash/XXHashConstants;

    sput-object v0, Lcom/tds/xxhash/XXHashConstants;->$VALUES:[Lcom/tds/xxhash/XXHashConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/xxhash/XXHashConstants;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/tds/xxhash/XXHashConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/xxhash/XXHashConstants;

    return-object v0
.end method

.method public static values()[Lcom/tds/xxhash/XXHashConstants;
    .registers 1

    .line 17
    sget-object v0, Lcom/tds/xxhash/XXHashConstants;->$VALUES:[Lcom/tds/xxhash/XXHashConstants;

    invoke-virtual {v0}, [Lcom/tds/xxhash/XXHashConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/xxhash/XXHashConstants;

    return-object v0
.end method
