.class synthetic Lcom/tds/protobuf/GeneratedMessageLite$1;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 540
    invoke-static {}, Lcom/tds/protobuf/WireFormat$JavaType;->values()[Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tds/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    :try_start_9
    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
