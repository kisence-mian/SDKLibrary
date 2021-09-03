.class public Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Lcom/tds/protobuf/ExtensionLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/tds/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/protobuf/ExtensionLite<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final containingTypeDefaultInstance:Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field final messageDefaultInstance:Lcom/tds/protobuf/MessageLite;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/MessageLite;Ljava/lang/Object;Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V
    .registers 8
    .param p3, "messageDefaultInstance"    # Lcom/tds/protobuf/MessageLite;
    .param p4, "descriptor"    # Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .param p5, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/tds/protobuf/MessageLite;",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1039
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    .local p1, "containingTypeDefaultInstance":Lcom/tds/protobuf/MessageLite;, "TContainingType;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TType;"
    invoke-direct {p0}, Lcom/tds/protobuf/ExtensionLite;-><init>()V

    .line 1042
    if-eqz p1, :cond_21

    .line 1046
    invoke-virtual {p4}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/tds/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_18

    if-eqz p3, :cond_10

    goto :goto_18

    .line 1048
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/tds/protobuf/MessageLite;

    .line 1052
    iput-object p2, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    .line 1053
    iput-object p3, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/tds/protobuf/MessageLite;

    .line 1054
    iput-object p4, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1055
    return-void

    .line 1043
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 1087
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1088
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_31

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v0, "result":Ljava/util/List;
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1091
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_1e

    .line 1093
    :cond_30
    return-object v0

    .line 1095
    .end local v0    # "result":Ljava/util/List;
    :cond_31
    return-object p1

    .line 1098
    :cond_32
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContainingTypeDefaultInstance()Lcom/tds/protobuf/MessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    .line 1066
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/tds/protobuf/MessageLite;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 1147
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;
    .registers 2

    .line 1137
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/tds/protobuf/MessageLite;
    .registers 2

    .line 1082
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/tds/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 1072
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .registers 2

    .line 1142
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v0, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method

.method singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 1103
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1a

    .line 1104
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v0, v0, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/tds/protobuf/Internal$EnumLiteMap;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tds/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/tds/protobuf/Internal$EnumLite;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_1a
    return-object p1
.end method

.method singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 1128
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_16

    .line 1129
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_16
    return-object p1
.end method

.method toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 1112
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1113
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/tds/protobuf/WireFormat$JavaType;->ENUM:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_31

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v0, "result":Ljava/util/List;
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1116
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_1e

    .line 1118
    :cond_30
    return-object v0

    .line 1120
    .end local v0    # "result":Ljava/util/List;
    :cond_31
    return-object p1

    .line 1123
    :cond_32
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
