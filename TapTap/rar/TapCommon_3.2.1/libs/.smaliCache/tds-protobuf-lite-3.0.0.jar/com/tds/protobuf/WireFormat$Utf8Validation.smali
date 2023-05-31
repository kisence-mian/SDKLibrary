.class abstract enum Lcom/tds/protobuf/WireFormat$Utf8Validation;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Utf8Validation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/protobuf/WireFormat$Utf8Validation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/protobuf/WireFormat$Utf8Validation;

.field public static final enum LAZY:Lcom/tds/protobuf/WireFormat$Utf8Validation;

.field public static final enum LOOSE:Lcom/tds/protobuf/WireFormat$Utf8Validation;

.field public static final enum STRICT:Lcom/tds/protobuf/WireFormat$Utf8Validation;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 180
    new-instance v0, Lcom/tds/protobuf/WireFormat$Utf8Validation$1;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/WireFormat$Utf8Validation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/tds/protobuf/WireFormat$Utf8Validation;

    .line 187
    new-instance v1, Lcom/tds/protobuf/WireFormat$Utf8Validation$2;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tds/protobuf/WireFormat$Utf8Validation$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tds/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/tds/protobuf/WireFormat$Utf8Validation;

    .line 194
    new-instance v3, Lcom/tds/protobuf/WireFormat$Utf8Validation$3;

    const-string v5, "LAZY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tds/protobuf/WireFormat$Utf8Validation$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tds/protobuf/WireFormat$Utf8Validation;->LAZY:Lcom/tds/protobuf/WireFormat$Utf8Validation;

    .line 178
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tds/protobuf/WireFormat$Utf8Validation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tds/protobuf/WireFormat$Utf8Validation;->$VALUES:[Lcom/tds/protobuf/WireFormat$Utf8Validation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tds/protobuf/WireFormat$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/tds/protobuf/WireFormat$1;

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/protobuf/WireFormat$Utf8Validation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 178
    const-class v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;

    return-object v0
.end method

.method public static values()[Lcom/tds/protobuf/WireFormat$Utf8Validation;
    .registers 1

    .line 178
    sget-object v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;->$VALUES:[Lcom/tds/protobuf/WireFormat$Utf8Validation;

    invoke-virtual {v0}, [Lcom/tds/protobuf/WireFormat$Utf8Validation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/protobuf/WireFormat$Utf8Validation;

    return-object v0
.end method


# virtual methods
.method abstract readString(Lcom/tds/protobuf/CodedInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
