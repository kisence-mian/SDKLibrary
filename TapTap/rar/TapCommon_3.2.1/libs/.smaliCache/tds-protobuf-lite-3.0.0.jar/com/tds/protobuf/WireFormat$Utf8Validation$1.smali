.class final enum Lcom/tds/protobuf/WireFormat$Utf8Validation$1;
.super Lcom/tds/protobuf/WireFormat$Utf8Validation;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/tds/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method readString(Lcom/tds/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 3
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lcom/tds/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
