.class final Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/tds/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/tds/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/Internal$EnumLiteMap;ILcom/tds/protobuf/WireFormat$FieldType;ZZ)V
    .registers 6
    .param p2, "number"    # I
    .param p3, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p4, "isRepeated"    # Z
    .param p5, "isPacked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/tds/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 924
    .local p1, "enumTypeMap":Lcom/tds/protobuf/Internal$EnumLiteMap;, "Lcom/tds/protobuf/Internal$EnumLiteMap<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/tds/protobuf/Internal$EnumLiteMap;

    .line 926
    iput p2, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 927
    iput-object p3, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/tds/protobuf/WireFormat$FieldType;

    .line 928
    iput-boolean p4, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 929
    iput-boolean p5, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    .line 930
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .registers 4
    .param p1, "other"    # Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 977
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 916
    check-cast p1, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/tds/protobuf/Internal$EnumLiteMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/tds/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;
    .registers 2

    .line 950
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/tds/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/tds/protobuf/WireFormat$FieldType;->getJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/tds/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 940
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/tds/protobuf/MessageLite$Builder;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite$Builder;
    .registers 5
    .param p1, "to"    # Lcom/tds/protobuf/MessageLite$Builder;
    .param p2, "from"    # Lcom/tds/protobuf/MessageLite;

    .line 971
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-object v1, p2

    check-cast v1, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/GeneratedMessageLite;)Lcom/tds/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .registers 2

    .line 960
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .registers 2

    .line 955
    iget-boolean v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
