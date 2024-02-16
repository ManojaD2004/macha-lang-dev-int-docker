export const LANG_VERSIONS = {
  machalang: "1.0.1",
};
export const CODE_SNIPPETS = {
  machalang: `irlli node = {
    data: 0,
    lnode: khali,
    rnode: khali,
};
// khali means null - nothing

idu head = khali;

kelsa nodeMadu(data) {
    irlli newNode = {
        data: data,
        lnode: khali,
        rnode: khali,
    }
    kodu newNode;
}

kelsa nodeInsertMadu(headNode, data) {
    enandre (headNode === khali) {
        head = nodeMadu(data);
    }
    illava {
        enandre (data > headNode.data) {
            enandre (headNode.rnode === khali) {
                headNode.rnode = nodeMadu(data);
            }
            illava {
                nodeInsertMadu(headNode.rnode, data);
            }
        }
        illava {
            enandre (headNode.lnode === khali) {
                headNode.lnode = nodeMadu(data);
            }
            illava {
                nodeInsertMadu(headNode.lnode, data);
            }
        }
    }
}

kelsa inorderTreeTraversal(headNode) {
    enandre (headNode !== khali) {
        inorderTreeTraversal(headNode.lnode);
        macha.helu(headNode.data + " ,");
        inorderTreeTraversal(headNode.rnode);
    }
}

kelsa preorderTreeTraversal(headNode) {
    enandre (headNode !== khali) {
        macha.helu(headNode.data + " ,");
        preorderTreeTraversal(headNode.lnode);
        preorderTreeTraversal(headNode.rnode);
    }
}

kelsa postorderTreeTraversal(headNode) {
    enandre (headNode !== khali) {
        postorderTreeTraversal(headNode.lnode);
        postorderTreeTraversal(headNode.rnode);
        macha.helu(headNode.data + " ,");
    }
}

macha.helu("This is a program that convert Array to Binary Tree: \n");
irlli someNum = [50,80,20,15,90,40,30,10];
irlli n = 8;

allivaragu (idu i = 0; i < n; i++) {
    nodeInsertMadu(head, someNum[i]);
}

macha.helu("Data has been Inserted!!\n");
macha.helu("InOrder Traversal: ");
macha.helu("[ ");
inorderTreeTraversal(head);
macha.helu(" ]\n");
macha.helu("PreOrder Traversal: ");
macha.helu("[ ");
preorderTreeTraversal(head);
macha.helu(" ]\n");
macha.helu("PostOrder Traversal: ");
macha.helu("[ ");
postorderTreeTraversal(head);
macha.helu(" ]\n");

`,

}
